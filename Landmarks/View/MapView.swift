//
//  MapView.swift
//  Landmarks
//
//  Created by 李清发 on 2019/11/15.
//  Copyright © 2019 iTaojin. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate:CLLocationCoordinate2D
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
