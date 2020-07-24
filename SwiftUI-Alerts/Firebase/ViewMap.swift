//
//  ViewMap.swift
//  SwiftUI-Alerts
//
//  Created by Ceren on 25.07.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import Foundation
import SwiftUI
import MapKit

public struct ViewMap: UIViewRepresentable {
    public func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    public func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
}
