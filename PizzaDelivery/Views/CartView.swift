//
//  CartView.swift
//  PizzaDelivery
//
//  Created by sher on 15/4/22.
//

import SwiftUI

struct CartView: View {
     @StateObject var viewModel: CartViewModel
    
    var body: some View {
        VStack {
            List(viewModel.positions) {
                position in
                PositionCell(position: position)
                    .swipeActions {
                        Button {
                            viewModel.positions.removeAll { pos in
                                pos.id == position.id
                            }
                        } label: {
                            Text("Удалить")
                                
                        }.tint(.red)

                    }
                
            }.listStyle(.plain)
                .navigationTitle("Корзина")
            
            HStack {
                Text("Итого: ")
                    .fontWeight(.bold)
                Spacer()
                Text("\(viewModel.cost) сомов")
                    .fontWeight(.bold)
            }
            .padding()
            
            HStack {
                Button {
                    print("Отмена")
                } label: {
                    Text("Отменить")
                        .font(.body.bold())
                        .padding()
                        .foregroundColor(Color.white)
                        .background(Color.red)
                        .cornerRadius(24)
                        
                }
                Button {
                    print("заказать")
                } label: {
                    Text("Заказать")
                        .font(.body.bold())
                        .padding()
                        .foregroundColor(Color.white)
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .cornerRadius(24)
                        
                }

            }.padding()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(viewModel: CartViewModel.shared)
    }
}
