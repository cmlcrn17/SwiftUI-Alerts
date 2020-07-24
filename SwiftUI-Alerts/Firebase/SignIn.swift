//
//  ContentView.swift
//  SwiftUI-Alerts
//
//  Created by Ceren on 1.06.2020.
//  Copyright © 2020 ceren. All rights reserved.
//

import SwiftUI

enum ActiveAlerts {
    case eposta, parola, dogrulama, basarili
}

struct SignIn: View {
    
    @State private var showAlert = false
    @State private var activeAlert: ActiveAlerts = .eposta
    
    @State private var isChecked:Bool = false
    @State private var txt_EPosta = ""
    @State private var txt_Password = ""
    @State var main : Bool = false
    
    let prefs = UserDefaults.standard
    
    ///Kontrol işlemleri yapılır, hata mesajı görüntülenir.
    func getControl() -> Void{
        
        if(txt_EPosta == ""){
            self.activeAlert = .eposta
            self.showAlert = true
            return
        }
        
        if(txt_Password == ""){
            self.activeAlert = .parola
            self.showAlert = true
            return
        }
        
        if(isChecked == false){
            self.activeAlert = .dogrulama
            self.showAlert = true
            return
        }
        
        
        prefs.set(txt_EPosta, forKey: "USERNAME")
        prefs.set(txt_Password, forKey: "PASSWORD")
        self.main = true
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .center){
                    
                    Image("calendar")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width * 0.30, height: UIScreen.main.bounds.height * 0.16)
                        .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    
                    VStack(alignment: .leading) {
                        
                        Spacer().frame(height: UIScreen.main.bounds.height * 0.060)
                        
                        Text("Oturum Aç")
                            .padding(10)
                            .font(Font.system(size: 30, weight: .medium, design: .serif))
                            .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                            .keyboardType(.numberPad)
                        
                        VStack(alignment: .leading, spacing: 4){
                            
                            TextField("E-Posta", text: self.$txt_EPosta)
                                .padding(10)
                                .font(Font.system(size: 15, weight: .medium, design: .serif))
                                .background(Color(red: 247/255, green: 247/255, blue:247/255))
                                .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                                .cornerRadius(5)
                            
                        }.padding(.bottom, 16)
                        
                        VStack(alignment: .leading, spacing: 4){
                            
                            SecureField("Parola", text: self.$txt_Password)
                                .padding(10)
                                .font(Font.system(size: 15, weight: .medium, design: .serif))
                                .background(Color(red: 247/255, green: 247/255, blue:247/255))
                                .background(RoundedRectangle(cornerRadius: 10))
                                .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                                .cornerRadius(5)
                            
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
                        
                        Text("Yukarıdaki bilgileri")
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
                
                NavigationLink(destination: SignUp()){
                    Text("Üye Ol")
                        .font(Font.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(Color(red: 125/255, green: 40/255, blue:133/255))
                }.navigationBarTitle("")
                
                
                Spacer().frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.175)
                
                NavigationLink(destination: Main(), isActive: self.$main){
                               Text("")
                           }
                
            } .alert(isPresented: $showAlert) {
                switch activeAlert {
                case .eposta:
                    return Alert(title: Text("E-Posta"), message: Text("E-Posta adresiniz hatalıdır."))
                case .parola:
                    return Alert(title: Text("Parola"), message: Text("Parola girmediniz."))
                case .dogrulama:
                    return Alert(title: Text("Doğrulama"), message: Text("Doğrulama yapmadınız."))
                case .basarili:
                    return Alert(title: Text("Başarılı"), message: Text("Tüm kontroller başarılıdır."))
                }
            }
        }.accentColor(Color(red: 125/255, green: 40/255, blue:133/255))
        .navigationBarTitle("")
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
