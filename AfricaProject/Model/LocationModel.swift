//
//  LocationModel.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 01/02/23.
//

import Foundation
import MapKit

struct NationalParkLocation: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
    
    //computed property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    static let allnationalPark: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static let example = allnationalPark[0]
    
    
}
