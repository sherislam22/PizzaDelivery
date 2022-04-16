//
//  PositionCell.swift
//  PizzaDelivery
//
//  Created by sher on 16/4/22.
//

import SwiftUI

struct PositionCell: View {
    var position: Positions
    var body: some View {
        HStack {
            Text("\(position.product.title)")
                .fontWeight(.bold)
            Spacer()
            Text("\(position.count) шт.")
            Text("\(position.cost) сомов")
                .frame(width: 85, alignment: .trailing)
        }.padding()
    }
}

struct PositionCell_Previews: PreviewProvider {
    static var previews: some View {
        PositionCell(position: Positions(id: "1", product: Product(id: "7", title: "Ассорти", imageUrl: "Pizza", descrip: "Description", price: 550), count: 4))
    }
}
