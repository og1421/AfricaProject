//
//  InsectFactVIew.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 30/01/23.
//

import SwiftUI

struct InsectFactView: View {
    // MARK: - Properties
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }//: Tabs
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: Box
    }
}

struct InsectFactView_Previews: PreviewProvider {
    static var previews: some View {
        InsectFactView(animal: Animal.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
