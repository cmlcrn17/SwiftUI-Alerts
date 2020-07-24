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
    //TODO: Oturumu Kapat butonu konulacak. Gideceği sayfa SignIn()
    //TODO: Back Button kaldırılacak.
    //TODO: Etkinliklerim listesi ekrana basılacak.
    //TODO: Etkinlik konumları haritaya basılacak.
    //TODO: Haritaya basılan konumların üzerine tıklandığında navigasyon yapılabilir olacak.
    //TODO: Etkinlik ekleme işlemleri geliştirilecek.
    
    var body: some View {
        VStack{
            TabView {
                //TODO: Buraya Liste ekranı gelecek.
                Text("Etkinliklerim")
                
                //Buraya tam sayfa harita gelecek.
                ViewMap()
            }
        }
    }
}
