//
//  AnimalModel.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 29/01/23.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
    
    static let allAnimals: [Animal] = Bundle.main.decode("animals.json")
    static let example = allAnimals[2]
}
