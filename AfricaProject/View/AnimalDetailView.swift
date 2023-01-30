//
//  AnimalDetailView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 30/01/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                //Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                //Title
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in picture")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                //Facts
                
                //Description
                
                //Map
                
                //Link
                
            }//: Vstack
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: Scrool
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: Animal.example)
        }
    }
}
