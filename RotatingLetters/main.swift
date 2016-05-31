//
//  main.swift
//  RotatingLetters
//
//  Created by Russell Gordon on 2016-05-23.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

// Keep looping until a valid input string is provided
var word : String = "🇨🇦"
repeat {
    
    // Show the prompt
    print("Input word is? ", terminator: "")

    // Get some input
    if let input = readLine() {
        
        // We have something given as input, see if it is valid (i.e.: all characters are uppercase letters only)
        var validInput : Bool = true
        for scalar in input.unicodeScalars {    // (see http://apple.co/1RK0zFl)
            
            if scalar.value < 65 || scalar.value > 90 { // 65 to 90 inclusive is all uppercase letters (see: http://unicodelookup.com)
                validInput = false
                break                   // stop checking (breakt the loop) since input shown to be invalid
            }
            
        }
        
        // Keep the input if it is valid
        if validInput == true {
            word = input
        }
        
    }
    
} while word == "🇨🇦"
