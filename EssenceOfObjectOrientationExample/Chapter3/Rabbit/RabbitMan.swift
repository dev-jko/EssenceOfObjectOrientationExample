//
//  RabbitMan.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/31.
//

import Foundation

class RabbitMan: Rabbit, Character {
    func appear() {
        print("토끼맨 등장")
        run()
    }
    
    override func run() {
        print("토끼맨 껑충 뛰기")
    }
}
