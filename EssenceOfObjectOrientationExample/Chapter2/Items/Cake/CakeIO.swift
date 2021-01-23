//
//  CakeIO.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


protocol CakeIO {
    func use(name: String, remaining: UInt)
}

struct CLICakeIO: CakeIO {
    func use(name: String, remaining: UInt) {
        print("\(name) 먹기, 남은 양 : \(remaining)")
    }
}
