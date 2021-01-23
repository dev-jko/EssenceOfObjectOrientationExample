//
//  Alice.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

class Alice: HasHeight, HasName {
    private(set) var height: Int = 160
    let name: String = "엘리스"
    private var item: Item?

    private let io: AliceIO
    
    init(io: AliceIO) {
        self.io = io
    }
    
    func pick(item: Item) {
        if let item = self.item {
            io.hasItem(itemName: item.name)
            return
        }
        
        self.item = item
        io.pick(itemName: item.name)
    }
    
    func drop() {
        guard let item = item else {
            io.noItem()
            return
        }
        
        self.item = nil
        io.drop(itemName: item.name)
    }
    
    func useItem() {
        guard let item = item else {
            io.noItem()
            return
        }
        
        guard item.isAvailable else {
            io.notAvailable(itemName: item.name)
            return
        }
        
        io.useItem(itemName: item.name)
        let effect = item.use()
        changeHeight(effect)
    }
    
    private func changeHeight(_ value: Int) {
        if height > value {
            height -= value
        } else {
            height = 1
        }
        io.changeHeight(height: height)
    }
}
