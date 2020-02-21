//
//  MapView.swift
//  Creating and Combining Views
//
//  Created by Savannah McCoy on 2/21/20.
//  Copyright © 2020 Savannah McCoy. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
       annotation.coordinate = coordinate
       annotation.title = "Turtle Rock"
       annotation.subtitle = "Visit us soon"
       view.addAnnotation(annotation)

    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
