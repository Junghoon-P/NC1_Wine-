//
//  TransactionRow.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct TransactionRow: View {
    var title = "Wines Name"
    var subtitle = "origin"
    var number = "1"
    var price = "$364.00"
    var color = Color.blue
    
    var body: some View {
        HStack(spacing:12){
            VStack {
                Text(number).bold()
            }
            .foregroundColor(.white)
            .frame(width: 50, height: 50)
            .background(color)
            .cornerRadius(10)
//            .mask(RoundedCornerStyle(radius: 30, corners: [.topLeft, .bottomRight]))
            
            VStack(alignment: .leading){
                Text(title).font(.headline)
                Text(subtitle).font(.subheadline)
                    .foregroundColor(.secondary )
            }
            
            Spacer()
            
            Text(price)
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
