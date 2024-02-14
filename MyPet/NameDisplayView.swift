//
//  NameDisplayView.swift
//  MyPet
//
//  Created by Demetrius Vissarion on 14/02/2024.
//

import Foundation
import SwiftUI

struct NameDisplayView: View {
    var petName: String

    var body: some View {
        Text("Your pet's name is \(petName)")
            .navigationTitle("Pet Name")
    }
}
