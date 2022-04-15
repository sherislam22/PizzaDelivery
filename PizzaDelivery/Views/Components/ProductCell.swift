//
//  ProductCell.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ProductCell: View {
    
    var product: Product
    
    var body: some View {
        VStack {
            Image(product.imageUrl)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(maxWidth: screen.width * 0.45)
                .clipped()
                .cornerRadius(16)
            HStack {
                Text(product.title)
                    .font(.custom("AvenirNext-regular", size: 12))
                Text("\(product.price) сом")
                    .font(.custom("AvenirNext-bold", size: 12))
                
            }.padding(.horizontal,6)
                .padding(.bottom,6)
            
        }.frame(width: screen.width * 0.45, height: screen.width * 0.55)
            .background(.white)
            .cornerRadius(16)
            .shadow(radius: 4)
       
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: Product(id: "7", title: "Ассорти", imageUrl: "Pizza", descrip: "Description", price: 550))
    }
}
