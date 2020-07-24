//
//  Main.swift
//  SwiftUI-Alerts
//
//  Created by Ceren on 25.07.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI
import MapKit

struct Main: View {
    var body: some View {
        VStack{
            TabView {
                //TODO: Buraya Liste ekranı gelecek.
                Text("Tab 1")
                
                //Buraya tam sayfa harita gelecek.
                ViewMap()
            }
        }
    }
}
