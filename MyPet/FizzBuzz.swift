//
//  FizzBuzz.swift
//  MyPet
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import Foundation

class FizzBuzz {
    var number = Int()

    func go(number: Int) -> String {
        var result = ""

        for num in 1...number {
            if num % 5 == 0 && num % 3 == 0
            {
                result += "FizzBuzz, "
            }
            else if num % 3 == 0
            {
                result += "Fizz, "
            }
            else if num % 5 == 0
            {
                result += "Buzz, "
            }
            else
            {
                result += "\(num), "
            }
        }
        return String(result.dropLast(2))
    }
}
