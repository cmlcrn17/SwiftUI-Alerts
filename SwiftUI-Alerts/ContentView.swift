//
//  ContentView.swift
//  SwiftUI-Alerts
//
//  Created by Ceren on 1.06.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var txt_TCNumber = ""
    @State private var txt_Password = ""
    @State private var isChecked:Bool = false
    
    func getControl() -> Void{
        
    }
    
    var body: some View {
        
        VStack{
            VStack(alignment: .center){
                
                Image("calendar")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.35, height: UIScreen.main.bounds.height * 0.15)
                    .shadow(color: .gray, radius: 3, x: 2, y: 3)
                
                VStack(alignment: .leading) {
                    
                    Spacer().frame(height: UIScreen.main.bounds.height * 0.100)
                    
                    Text("Oturum Aç")
                        .padding(10)
                        .font(Font.system(size: 30, weight: .medium, design: .serif))
                        .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                    
                    VStack(alignment: .leading, spacing: 4){
                        
                        TextField("TC Kimlik No", text: self.$txt_TCNumber)
                            .padding(10)
                            .font(Font.system(size: 15, weight: .medium, design: .serif))
                            .background(RoundedRectangle(cornerRadius: 10))
                            .foregroundColor(Color(red: 247/255, green: 247/255, blue:247/255))
                        
                    }.padding(.bottom, 16)
                    
                    VStack(alignment: .leading, spacing: 4){
                        
                        SecureField("Parola", text: self.$txt_Password)
                            .padding(10)
                            .font(Font.system(size: 15, weight: .medium, design: .serif))
                            .background(RoundedRectangle(cornerRadius: 10))
                            .foregroundColor(Color(red: 247/255, green: 247/255, blue:247/255))
                        
                    }
                }
            }.padding(.horizontal, 40.0)
                .padding()
            
            
            Spacer().frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.03)
            
            Button(action: {
                self.isChecked = !self.isChecked
            }){
                HStack(alignment: .top){
                    Image(systemName: isChecked ? "checkmark.square": "square")
                        .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                    
                    Text("Yukarıdaki  bilgileri")
                        .font(Font.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(Color(red: 178/255, green: 178/255, blue:178/255))
                    
                    
                    Text("doğruluyorum.")
                        .font(Font.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                }
            }
            
            Spacer().frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.05)
            
            Button(action: {
                self.getControl()
            }) {
                Text("Oturum Aç")
                    .padding(10)
                    .font(Font.system(size: 18, weight: .medium, design: .serif))
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width * 0.40, height: UIScreen.main.bounds.height * 0.07)
                
            }.background(RoundedRectangle(cornerRadius: 10))
                .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                .padding()
                .shadow(radius: 5)
            //.shadow(color: .gray, radius: 5, x: 5, y: 5)
            
            Spacer().frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.175)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
