//
//  TamagotchiConsoleAppTests.swift
//  TamagotchiConsoleAppTests
//
//  Created by Guo, Dylan (Coll) on 30/11/2022.
//

import XCTest

class TamagotchiConsoleAppTests: XCTestCase {
    
    func testWhenICreateATamagotchiItsWeightHungerAndAgeAreInitialisedTo00And5Respetively() {
        let tamagotchi = Tamagotchi(name: input.getString(prompt: "Please input the name for your tamagotchi: ")
        XCTAssertEqual(5, tamagotchi.getHunger())
        XCTAssertEqual(0, tamagotchi.getAge())
        XCTAssertEqual(0, tamagotchi.getWeight())
    }
    
    func testWhenSnackIsEatenWeightIncreasesBy1AndHungerDecreasesBy1() {
        let tamagotchi = Tamagotchi(name: input.getString(prompt: "Please input the name for your tamagotchi: ")
        let expectedWeight = tamagotchi.getWeight() + 1
        let expectedHunger = tamagotchi.getHunger() - 1
        let returnedValues = tamagotchi.eatSnack()
        XCTAssertEqual(expectedHunger, returnedValues.0)
        XCTAssertEqual(expectedWeight, returnedValues.1)
    }
    
    func testWhenPlayedWithHappinessIncreasesBy1AndWeightDecreasesBy1() {
        let tamagotchi = Tamagotchi(name: input.getString(prompt: "Please input the name for your tamagotchi: ")
        let expectedWeight = tamagotchi.getWeight() - 1
        let expectedHappiness = tamagotchi.getHunger() + 2
        let returnedValues = tamagotchi.play()
        XCTAssertEqual(expectedHappiness, returnedValues.0)
        XCTAssertEqual(expectedWeight, returnedValues.1)
    }

}
