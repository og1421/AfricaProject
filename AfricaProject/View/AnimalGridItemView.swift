//
//  AnimalGridItemView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 03/02/23.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct AnimalGridItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalGridItemView(animal: Animal.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
