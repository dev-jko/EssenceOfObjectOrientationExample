//
//  BeverageIO.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


protocol BeverageIO {
    func use(name: String, remaining: UInt)
}

struct CLIBeverageIO: BeverageIO {
    func use(name: String, remaining: UInt) {
        print("\(name) 마시기, 남은 양 : \(remaining)")
    }
}
