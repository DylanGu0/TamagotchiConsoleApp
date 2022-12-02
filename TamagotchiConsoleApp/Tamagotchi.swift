//
//  Tamagotchi.swift
//  TamagotchiConsoleApp
//
//  Created by Guo, Dylan (Coll) on 30/11/2022.
//

import Foundation

class Tamagotchi {
    private var age: Int
    private var weight: Int
    private var hunger: Int
    private var happiness: Int
    private var alive: Bool
    let name: String
    
    init(name: String) {
        self.hunger = 5
        self.age = 0
        self.weight = 0
        self.happiness = 5
        self.alive = true
        self.name = name.uppercased()
    }

    func getHunger() -> Int {
        return self.hunger
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    func getHappiness() -> Int {
        return self.happiness
    }
    
    func getWeight() -> Int {
        return self.weight
    }
    
    func modifyHunger(_ change: Int) {
        self.hunger += change
        if self.hunger < 0 {
            self.hunger = 0
            self.alive = false
        } else if self.hunger > 10 {
            self.hunger = 10
        }
    }
    
    func modifyWeight(_ change: Int) {
        self.weight += change
        if self.weight < 0 {
            self.alive = false
        }
    }
    
    func modifyHappiness(_ change: Int) {
        self.happiness += change
        if self.happiness < 0 {
            self.alive = false
        }
    }
    
    func eatSnack() -> (Int, Int) {
        modifyHunger(-1)
        modifyWeight(1)
        return (self.hunger, self.weight)
    }
    
    func play() -> (Int, Int) {
        modifyWeight(-1)
        modifyHappiness(2)
        return (self.happiness, self.weight)
    }
    
    
}
