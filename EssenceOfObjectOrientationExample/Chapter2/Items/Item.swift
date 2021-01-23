//
//  Item.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


protocol Item: HasName {
    var isAvailable: Bool { get }
    
    func use() -> Int
}
