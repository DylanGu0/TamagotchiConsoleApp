//
//  main.swift
//  TamagotchiConsoleApp
//
//  Created by Guo, Dylan (Coll) on 30/11/2022.
//

import Foundation

let input = OptionlessInput()
let tamagotchi = Tamagotchi(name: input.getString(prompt: "Please input the name for your tamagotchi: "))

print("""
      Your tamagotchi, \(tamagotchi.name), has been born!
      It's age is \(tamagotchi.getAge())
      """)
