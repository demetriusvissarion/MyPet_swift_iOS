//
//  ContentView.swift
//  MyPet
//
//  Created by Demetrius Vissarion on 13/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var petName = ""
    @State private var petNames = [String]()

    var body: some View {
        NavigationView {
            List {
                // We're adding the TextField and Button to their own Section, with a header
                Section(header: Text("Add a new pet name")) {
                    // We're using HStack to stack the TextField and Button side by side
                    HStack {
                        TextField("Enter your pet's name", text: $petName)
                        Button("Submit") {
                            guard !petName.isEmpty else { return }
                            petNames.append(petName)  // Add the new pet name to the list
                            petName = ""  // Reset the text field
                        }
                    }
                }

                // The resulting list of names should have their own Section
                Section {
                    ForEach(petNames, id: \.self) { name in
                        NavigationLink(destination: NameDisplayView(petName: name)) {
                            Text(name)
                        }
                    }
                }
            }
            .navigationBarTitle("Pet Names")
        }
    }
}

#Preview {
    ContentView()
}
