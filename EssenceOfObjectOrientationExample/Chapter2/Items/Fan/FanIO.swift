//
//  FanIO.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

protocol FanIO {
    func use(name: String)
}

struct CLIFanIO: FanIO {
    func use(name: String) {
        print("\(name)로 부채질")
    }
}
