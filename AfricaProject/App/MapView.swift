//
//  MapView.swift
//  AfricaProject
//
//  Created by Orlando Moraes Martins on 28/01/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    @State private var region: MKCoordinateRegion = {
        var mappingCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377755)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mappingCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    //MARK: - Body
    var body: some View {
        // MARK: - No1 Basic Map
//        Map(coordinateRegion: $region)
        
        // MARK: - No2 Advanced Map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            //Option A: Pin Old Style (allways static)
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            //Option B: Marker new Style (allways static)
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            //Option C: Custom Basic Annotation (it could be interactive)
//            MapAnnotation(coordinate: item.location ) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            }
            
            //Option D: Custom Advanced Annotation
            MapAnnotation(coordinate: item.location ){
                MapAnnotationView(location: item)
            }
        })//: Map
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
