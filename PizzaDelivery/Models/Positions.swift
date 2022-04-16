//
//  Positions.swift
//  PizzaDelivery
//
//  Created by sher on 16/4/22.
//

import Foundation

struct Positions: Identifiable {
    var id: String
    var product: Product
    var count: Int
    var cost: Int {
        return product.price * self.count
    }
}
