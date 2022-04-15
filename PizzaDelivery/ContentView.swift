//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text("Авторизация")
                .padding()
                .padding(.horizontal,30)
                .font(.title.bold())
                .background(Color("whiteAlpha"))
                .cornerRadius(20)
            
            VStack {
                TextField("Введите @email", text: $email)
                    .padding()
                    .background(Color("textbg"))
                    .cornerRadius(12)
                    .padding(.horizontal,8)
                
                SecureField("Введите пароль", text: $password)
                    .padding()
                    .background(Color("textbg"))
                    .cornerRadius(12)
                    .padding(.horizontal,8)
                
                Button {
                    print("signIn")
                } label: {
                    Text("Вход")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(LinearGradient(colors: [Color("orange"), Color("yellow")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .foregroundColor(Color("darkbrown"))
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                        
                }.padding(.top)
                
                Button {
                    print("register")
                } label: {
                    Text("Регистрация")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .foregroundColor(Color("darkbrown"))
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                        .cornerRadius(12)
                }

            }.padding()
            .background(Color("whiteAlpha"))
            .cornerRadius(12)
            .padding()
            
            
        }.frame( maxWidth: .infinity,   maxHeight: .infinity)
            .ignoresSafeArea()
            .background(Image("bg").resizable().ignoresSafeArea())
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
