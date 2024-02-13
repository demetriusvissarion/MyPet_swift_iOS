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

}
