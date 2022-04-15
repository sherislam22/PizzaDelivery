//
//  CatalogModelView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import Foundation

class CatalogModelView: ObservableObject {
    static let shared = CatalogModelView()
    
    var popularProducts = [
        Product(id: "1", title: "Пеперони", imageUrl: "Pizza", descrip: "Description", price:480),
        Product(id: "2", title: "Маргарита", imageUrl: "Pizza", descrip: "Description", price: 320),
        Product(id: "3", title: "Маргарита Гурмэ", imageUrl: "Pizza", descrip: "Description", price: 350),
        Product(id: "4", title: "Мясной", imageUrl: "Pizza", descrip: "Description", price: 500),
        Product(id: "5", title: "Куринный", imageUrl: "Pizza", descrip: "Description", price: 420),
        Product(id: "6", title: "Диабло", imageUrl: "Pizza", descrip: "Description", price: 650),
        Product(id: "7", title: "Ассорти", imageUrl: "Pizza", descrip: "Description", price: 550),
        Product(id: "8", title: "4 сезона", imageUrl: "Pizza", descrip: "Description", price: 520),
    ]
}
