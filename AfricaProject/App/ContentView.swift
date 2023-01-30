//
//  ContentView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 28/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Properties
        let animals: [Animal] = Bundle.main.decode("animals.json")
        // MARK: - Body
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    }//: NavigationLink
                }//:Loop
            }//: List
            .navigationBarTitle("Africa", displayMode: .large)
        }//: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
