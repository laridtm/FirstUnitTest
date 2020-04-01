//
//  ViewController.swift
//  PokemonTestsIntro
//
//  Created by Larissa Diniz  on 31/03/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let squirtle = Pokemon(type: .water, attackType: .water)
    let charmander = Pokemon(type: .fire, attackType: .fire)
    let psyduck = Pokemon(type: .water, attackType: .water)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        squirtle.attack(enemy: charmander)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

