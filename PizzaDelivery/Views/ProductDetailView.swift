//
//  ProductDetailView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 12) {
            Image(product.imageUrl)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: screen.width, height: screen.width)
                .clipped()
                .cornerRadius(16)
                
           
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 24))
                Text("\(product.price) сом")
                    .font(.custom("AvenirNext-bold", size: 20))
                
            }.padding(.horizontal,6)
               
            VStack {
                Text(product.descrip)
                    .font(.custom("AvenirNext-regular", size: 24))
            }
            Spacer()
            
            HStack {
                Button {
                    print("Order")
                } label: {
                    Text("Заказать")
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(LinearGradient(colors: [Color("orange"), Color("yellow")], startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                        .foregroundColor(Color("darkbrown"))
                        .padding(.horizontal,12)
                        .font(.title3.bold())
                }

            }
            
        }.navigationBarHidden(false)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: Product(id: "7", title: "Ассорти", imageUrl: "Pizza", descrip: "Description", price: 550))
    }
}
