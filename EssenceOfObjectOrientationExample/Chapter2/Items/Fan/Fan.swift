//
//  Fan.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

class Fan: Item {
    private let effect: Int = 10
    
    let name: String = "부채"
    let isAvailable: Bool = true
    
    private let io: FanIO
    
    init(io: FanIO) {
        self.io = io
    }
    
    func use() -> Int {
        guard isAvailable else { return 0 }
        io.use(name: name)
        return effect
    }
}
