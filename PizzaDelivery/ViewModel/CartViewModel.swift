//
//  CartViewModel.swift
//  PizzaDelivery
//
//  Created by sher on 16/4/22.
//

import Foundation

class CartViewModel: ObservableObject {
    @Published var positions = [Positions]()
    
    static let shared = CartViewModel()
    private init() { }
    
    var cost: Int {
        var sum = 0
        for pos in positions {
            sum += pos.cost
        }
        return sum
    }
    func addPositions(_ position: Positions){
        self.positions.append(position)
    }
}
