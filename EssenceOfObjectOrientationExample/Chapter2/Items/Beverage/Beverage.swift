//
//  Beverage.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


class Beverage: Item {
    private let effect: Int = 150
    private var count: UInt = 5
    
    let name: String = "음료수"
    var isAvailable: Bool {
        count > 0
    }
    
    private let io: BeverageIO
    
    init(io: BeverageIO) {
        self.io = io
    }
    
    func use() -> Int {
        guard isAvailable else { return 0 }
        count -= 1
        io.use(name: name, remaining: count)
        return effect
    }
}
