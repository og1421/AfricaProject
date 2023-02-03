//
//  CenterModifier.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 03/02/23.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
