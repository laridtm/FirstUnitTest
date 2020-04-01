//
//  PokemonTestsIntroTests.swift
//  PokemonTestsIntroTests
//
//  Created by Larissa Diniz  on 31/03/20.
//  Copyright © 2020 Larissa Diniz . All rights reserved.
//

import XCTest
@testable import PokemonTestsIntro

class PokemonTestsIntroTests: XCTestCase {
    
    var squirtle:Pokemon!
    var charmander:Pokemon!
    var psyduck:Pokemon!
    
    override func setUpWithError() throws {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in         the class.
        squirtle = Pokemon(type: .water, attackType: .water)
        charmander = Pokemon(type: .fire, attackType: .fire)
        psyduck = Pokemon(type: .water, attackType: .water)
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        squirtle = nil
        charmander = nil
        psyduck = nil
    }
    
    func testThatAWaterPokemonDoesMoreDamageToAFirePokemon() {
        //1. Have Squirtle Attack Charmander
        squirtle.attack(enemy: charmander)
        
        //It was Super Effective!
        //2. Now Have Squirtle Attack Psyduck
        squirtle.attack(enemy: psyduck)
        
        //Oooh. That had to hurt.
                
        //Who took more damage? Charmander or Psyduck?
                
        //If a Water Pokemon Does More Damage To A Fire Pokemon,
        //We would expect Charmander to have less health than Psyduck.
                
        //3. Test it
        XCTAssertTrue(charmander.health < psyduck.health)
    }
    
    func testCheckIfTheDamageIsDecreasingLifeCorrectly() {
        
        squirtle.attack(enemy: charmander)
        
        charmander.attack(enemy: psyduck)
        
        psyduck.attack(enemy: squirtle)
        
        XCTAssertEqual(charmander.health, 40)
        XCTAssertEqual(psyduck.health, 90)
        XCTAssertEqual(squirtle.health, 70)
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
