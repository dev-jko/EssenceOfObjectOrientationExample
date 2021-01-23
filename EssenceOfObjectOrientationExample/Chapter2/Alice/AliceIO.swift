//
//  AliceIO.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation

protocol AliceIO {
    func pick(itemName: String)
    func drop(itemName: String)
    func useItem(itemName: String)
    func changeHeight(height: Int)
    func noItem()
    func notAvailable(itemName: String)
    func hasItem(itemName: String)
}

struct CLIAliceIO: AliceIO {
    func pick(itemName: String) {
        print("\(itemName)을(를) 줍기")
    }
    
    func drop(itemName: String) {
        print("\(itemName)을(를) 버리기")
    }
    
    func useItem(itemName: String) {
        print("\(itemName)을(를) 사용하기")
    }
    
    func changeHeight(height: Int) {
        print("현재 키 : \(height)")
    }
    
    func noItem() {
        print("아이템 없음")
    }
    
    func notAvailable(itemName: String) {
        print("\(itemName)은(는) 더 이상 사용할 수 없음")
    }
    
    func hasItem(itemName: String) {
        print("이미 \(itemName)을(를) 들고 있음")
    }
}
