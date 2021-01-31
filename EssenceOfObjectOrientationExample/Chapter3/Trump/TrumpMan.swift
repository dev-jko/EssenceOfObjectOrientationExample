//
//  TrumpMan.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/31.
//

import Foundation


class TrumpMan: Trump, Character {
    func appear() {
        print("트럼프맨 등장")
        reverse()
        lie()
    }
    
    override func reverse() {
        print("트럼프맨 뒤집기")
    }
    
    override func lie() {
        print("트럼프맨 엎드리기")
    }
}
