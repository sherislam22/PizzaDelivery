//
//  ProfileView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ProfileView: View {
    @State var isAuth = false
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
            HStack {
                Image("icon")
                    .resizable()
                    .frame(maxWidth:80, maxHeight: 80)
                    .clipShape(Circle())
                    .padding(2)
                
                VStack {
                    Text("Sherislam Talantbekov")
                        .font(.title2.bold())
                    Text("+996 773472127")
                        .font(.headline.monospacedDigit())
                        .padding(.horizontal)
                        
                }
                
            }
            VStack(alignment: .leading) {
                Text("Адрес доставки")
                    .bold()
                    
                
                Text("Кыргызстан, г.Ош, ул.Салиева, дом: 22,  кв: 33")
                
                List {
                    
                    HStack {
                        Text("Маргарита Гурмэ")
                            .bold()
                        Spacer()
                        Text("12-12-2022")
                    }
                    
                }
                .background(.bar)
                .listStyle(.plain)
                    .padding()
                    .background(.bar)
                    .cornerRadius(22)
                    
            }.padding(.horizontal)
            
            VStack {
                Button {
                    isAuth.toggle()
                } label: {
                    Text("Выйти")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(Color.red)
                        .cornerRadius(12)
                        .foregroundColor(Color.white)
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                }

            }.padding()
                .confirmationDialog("Вы хотите выйти?", isPresented: $isAuth, titleVisibility: .visible) {
                    Button(role: .destructive) {
                        print("quit")
                    } label: {
                        Text("Да")
                    }
                    Button( role: .cancel) {
                        print("cancel")
                    } label: {
                        Text("Нет")
                            
                            
                    }


                }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
