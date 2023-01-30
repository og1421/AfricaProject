//
//  ExternalWebLinkView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 30/01/23.
//

import SwiftUI

struct ExternalWebLinkView: View {
    // MARK: - Properties
    let animal: Animal
    // MARK: - Body
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }
                .foregroundColor(.accentColor)
            } //:Hstack
        }//:Box
    }
}

struct ExternalWebLinkView_Previews: PreviewProvider {
    static var previews: some View {
        ExternalWebLinkView(animal: Animal.example)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
