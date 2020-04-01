//
//  Pokemon.swift
//  PokemonTestsIntro
//
//  Created by Larissa Diniz  on 31/03/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import Foundation

class Pokemon {
  
  var type: PokemonType
  var attackType: PokemonAttackType
  var health:Int = 100
  
  init(type: PokemonType, attackType: PokemonAttackType) {
    self.type = type
    self.attackType = attackType
  }
  
  func attack(enemy: Pokemon) {
    
    var damage = 30
    
    if enemy.type == .fire && attackType == .water{
      damage = 60
    }
    
    if enemy.type == .water && attackType == .fire{
      damage = 10
    }
    
    enemy.health = enemy.health - damage
  }
}

enum PokemonType{
  case neutral
  case fire
  case water
}

enum PokemonAttackType{
  case normal
  case fire
  case water
}
