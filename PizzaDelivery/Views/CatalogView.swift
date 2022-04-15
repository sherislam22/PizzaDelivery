//
//  CatalogView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct CatalogView: View {
    let layer = [GridItem(.adaptive(minimum: screen.width / 2.2))]
    let layerforPizza = [GridItem(.adaptive(minimum: screen.width / 2.4))]
    var body: some View {
       
        ScrollView(.vertical, showsIndicators: false) {
            Section("Popular") {
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHGrid(rows: layer, spacing: 16) {
                        ForEach(CatalogModelView.shared.popularProducts, id: \.id ) {
                            item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                            }.foregroundColor(.black)

                            
                        }
                    }.padding()
                }
            }
            Spacer()
            Section("Popular") {
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: layerforPizza, spacing: 16) {
                        ForEach(CatalogModelView.shared.popularProducts, id: \.id ) {
                            item in
                            NavigationLink {
                                ProductDetailView(product: item)
                            } label: {
                                ProductCell(product: item)
                            }.foregroundColor(.black)

                            
                        }
                    }.padding()
                }
            }
            
        }.navigationTitle("Pizza Delivery 🍕")
        
    }
}

struct CatalogView_Previews: PreviewProvider {
    static var previews: some View {
        CatalogView()
    }
}
