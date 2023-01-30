//
//  InsetGalleryView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 30/01/23.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack( alignment: .center, spacing: 15 ) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }//: Hstack
        } //: Scroll
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        InsetGalleryView(animal: Animal.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
