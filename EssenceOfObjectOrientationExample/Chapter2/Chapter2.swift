//
//  main.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/23.
//

import Foundation


class Chapter2: Example {
    func run() {
        let BeverageIO = CLIBeverageIO()
        let beverage = Beverage(io: BeverageIO)
        
        let cakeIO = CLICakeIO()
        let cake = Cake(io: cakeIO)
        
        let fanIO = CLIFanIO()
        let fan = Fan(io: fanIO)
        
        let aliceIO = CLIAliceIO()
        let alice = Alice(io: aliceIO)
        
        let doorIO = CLIDoorIO()
        let door = Door(height: 250, io: doorIO)
        
        alice.useItem()
        alice.pick(item: cake)
        alice.useItem()
        
        _ = door.canPass(object: alice)
        
        alice.pick(item: beverage)
        alice.drop()
        
        alice.pick(item: fan)
        alice.useItem()
        
        _ = door.canPass(object: alice)
    }
}
