//
//  DoorIO.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


protocol DoorIO {
    func canPass(doorName: String, objectName: String, isPossible: Bool)
}

struct CLIDoorIO: DoorIO {
    func canPass(doorName: String, objectName: String, isPossible: Bool) {
        let msg = isPossible ? "있음" : "없음"
        print("\(objectName)은(는) \(doorName)을(를) 지나갈 수 \(msg)")
    }
}
