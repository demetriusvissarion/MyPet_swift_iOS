//
//  MyPetTests.swift
//  MyPetTests
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import XCTest
@testable import MyPet

final class MyPetTests: XCTestCase {
    
    // This would be our test case
    func testRegisteringFoodAddsToFoodOptions() {
        // Arrange
        let tastyFood = "salmon"
        let pet = Pet()
        
        // Act
        pet.registerFood(food: "salmon")
        let foodOptions = pet.getFoodOptions()
        // Value of type 'Pet' has no member 'getFoodOptions'
        
        // Assert
        XCTAssertTrue(foodOptions.contains(tastyFood))
    }
    
    // Test FizzBuzz
    func testFizzBuzz() {
        // Arrange
        let fizzbuzz = FizzBuzz()
        
        // Act
        var result: String = fizzbuzz.go(number: 15)
        
        // Assert
        XCTAssertTrue(result == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz")
    }

}
