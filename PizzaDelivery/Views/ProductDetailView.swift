//
//  ProductDetailView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct ProductDetailView: View {
   
    
    var viewmodel: ProductDetailViewModel
    @Environment(\.presentationMode) var presentationMode
    @State private var count = 1
    @State var size = "Маленькая"
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        VStack(spacing: 12) {
            Image(viewmodel.product.imageUrl)
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(width: screen.width, height: screen.width)
                .clipped()
                .cornerRadius(16)
                
           
            HStack {
                Text(viewmodel.product.title)
                    .font(.custom("AvenirNext-regular", size: 24))
                Text("\(viewmodel.getPrice(size: size)) сом")
                    .font(.custom("AvenirNext-bold", size: 20))
                
            }.padding(.horizontal,6)
               
            VStack {
                Text(viewmodel.product.descrip)
                    .font(.custom("AvenirNext-regular", size: 24))
            }
            HStack {
                Stepper("Количество", value: $count, in:1...10)
                Text("\(count)")
                    .padding(.horizontal)
                    .padding(.vertical,4)
                
            }.padding(.horizontal)
            
            Picker("Размер пиццы", selection:$size) {
                ForEach(viewmodel.sizes, id: \.self) {
                    size in
                    Text(size)
                }
            }.pickerStyle(.segmented)
                .padding(.horizontal)
            
            
            HStack {
                Button {
                    var position = Positions(id: UUID().uuidString, product: viewmodel.product, count: count)
                    position.product.price = viewmodel.getPrice(size: size)
                    CartViewModel.shared.addPositions(position)
                    presentationMode.wrappedValue.dismiss()
                   
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
            Spacer()
        }.navigationBarHidden(false)
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(viewmodel: ProductDetailViewModel(product: Product(id: "7", title: "Ассорти", imageUrl: "Pizza", descrip: "Description", price: 550)))
    }
}
