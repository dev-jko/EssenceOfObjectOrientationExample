//
//  Door.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

class Door: HasHeight, HasName {
    let height: Int
    let name: String = "문"
    
    private let io: DoorIO
    
    init(height: Int, io: DoorIO) {
        self.height = height
        self.io = io
    }
    
    func canPass(object: HasHeight & HasName) -> Bool {
        let isPossible = height >= object.height
        io.canPass(doorName: name, objectName: object.name, isPossible: isPossible)
        return isPossible
    }
}
