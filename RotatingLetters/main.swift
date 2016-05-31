//
//  main.swift
//  RotatingLetters
//
//  Created by Russell Gordon on 2016-05-23.
//  Copyright © 2016 Royal St. George's College. All rights reserved.
//

import Foundation

// INPUT: Keep looping until a valid input string is provided
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

// PROCESS: check the input characters against the allowable characters (I, O, S, H, Z, X, and N)
var validWord : Bool = true
for scalar in word.unicodeScalars {
    
    // Check this character
    if !(scalar.value == 73 || scalar.value == 79 || scalar.value == 83 || scalar.value == 72 || scalar.value == 90 || scalar.value == 88 || scalar.value == 78) {
        
        validWord = false   // not a valid word
        break               // stop checking
        
    }
    
}

// OUTPUT: State whether the word is valid
if validWord == true {
    print("YES")
} else {
    print("NO")
}