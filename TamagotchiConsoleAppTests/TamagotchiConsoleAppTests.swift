//
//  TamagotchiConsoleAppTests.swift
//  TamagotchiConsoleAppTests
//
//  Created by Guo, Dylan (Coll) on 30/11/2022.
//

import XCTest

class TamagotchiConsoleAppTests: XCTestCase {
    
    func testWhenICreateATamagotchiItsWeightHungerAndAgeAreInitialisedTo00And5Respetively() {
        let tamagotchi = Tamagotchi()
        XCTAssertEqual(5, tamagotchi.hunger)
        XCTAssertEqual(0, tamagotchi.age)
        XCTAssertEqual(0.0, tamagotchi.weight)
    }
    
    func testWhenSnackIsEatenHappinessIncreasesBy1AndHungerDecreasesBy2() {
        let tamagotchi = Tamagotchi()
        
    }
}
