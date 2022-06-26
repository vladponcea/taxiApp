//
//  GoogleMapsView.swift
//  
//
//  Created by Vladut Mihai Poncea on 26.06.2022.
//

import Foundation
import GoogleMaps
import SwiftUI

struct GoogleMapsView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let camera = GMSCameraPosition.london
        
        let mapView = GMSMapView(frame: CGRect.zero, camera: camera)
        
        return mapView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

extension GMSCameraPosition {
    static var london = GMSCameraPosition.camera(withLatitude: 51.507, longitude: 0, zoom: 10)
}
