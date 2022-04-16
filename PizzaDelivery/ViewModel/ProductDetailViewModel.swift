//
//  ProductDetailViewModel.swift
//  PizzaDelivery
//
//  Created by sher on 16/4/22.
//

import Foundation

class ProductDetailViewModel: ObservableObject {
    @Published var product: Product
    @Published var  sizes = ["Маленькая", "Средняя", "Большая"]
    init(product: Product) {
        self.product = product
    }
    
    func getPrice(size: String) -> Int {
        switch size {
        case "Маленькая": return product.price
        case "Средняя": return Int(Double(product.price) * 1.25)
        case "Большая": return Int(Double(product.price) * 1.5)
        default: return 0
        }
    }
    
}
