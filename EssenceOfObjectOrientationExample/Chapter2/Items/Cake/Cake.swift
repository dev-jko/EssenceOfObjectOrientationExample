//
//  Cake.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

class Cake: Item {
    private let effect: Int = -100
    private var count: UInt = 5
    
    let name: String = "생크림 케이크"
    var isAvailable: Bool {
        count > 0
    }
    
    private let io: CakeIO
    
    init(io: CakeIO) {
        self.io = io
    }
    
    func use() -> Int {
        guard isAvailable else { return 0 }
        count -= 1
        io.use(name: name, remaining: count)
        return effect
    }
}
