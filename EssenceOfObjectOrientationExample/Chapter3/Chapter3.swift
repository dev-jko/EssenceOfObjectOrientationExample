//
//  Chapter3.swift
//  EssenceOfObjectOrientationExample
//
//  Created by Jaedoo Ko on 2021/01/31.
//

import Foundation

class Chapter3: Example {
    func run() {
        let trumps: [Trump] = [Trump(), TrumpMan()]
        trumps.forEach { trump in
            trump.reverse()
            trump.lie()
        }
        
        let rabbits: [Rabbit] = [Rabbit(), RabbitMan()]
        rabbits.forEach { rabbit in
            rabbit.run()
        }
        
        let characters: [Character] = [TrumpMan(), RabbitMan()]
        characters.forEach { character in
            character.appear()
        }
    }
}
