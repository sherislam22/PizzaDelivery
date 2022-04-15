//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isAuth = true
    @State private var email = ""
    @State private var password = ""
    @State private var confirmpassword = ""
    @State private var isToogle = false
    var body: some View {
        VStack(alignment: .center, spacing: 40) {
            Text( isAuth ? "Авторизация" : "Регистрация")
                .padding(isAuth ? 16 : 20)
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
                if !isAuth {
                    SecureField("Повторите пароль", text: $confirmpassword)
                        .padding()
                        .background(Color("textbg"))
                        .cornerRadius(12)
                        .padding(.horizontal,8)
                    
                }
                
                Button {
                    if isAuth {
                    print("signIn")
                        isToogle.toggle()
                    } else {
                        print("register")
                        self.email = ""
                        self.password = ""
                        self.confirmpassword = ""
                        self.isAuth.toggle()
                    }
                } label: {
                    Text(isAuth ? "Вход" : "Создать аккаунт")
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
                    isAuth.toggle()
                } label: {
                    Text(isAuth ? "Регистрация" : "Уже есть аккаунт?")
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
            .background(Image("bg").resizable().ignoresSafeArea().blur(radius: isAuth ? 0  : 6))

            .animation(Animation.easeInOut(duration: 0.3), value: isAuth)
            .fullScreenCover(isPresented: $isToogle) {
                MainTabBar()
            }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
