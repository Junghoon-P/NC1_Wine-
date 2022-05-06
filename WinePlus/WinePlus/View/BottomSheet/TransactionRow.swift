//
//  TransactionRow.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct TransactionRow: View {
    var title = "Wines Name"
    var subtitle = 1
    var number = 1
    var price = "$364.00"
    var wines: Wines
    
    var body: some View {
        HStack(spacing:12){
            VStack {
                Text("\(number)").bold()
            }
            .foregroundColor(.black)
            .frame(width: 50, height: 50)
            .border(Color.white)
            .cornerRadius(10)

            
            VStack(alignment: .leading){
                Text(title).font(.headline)
                Text("\(subtitle)").font(.subheadline)
                    .foregroundColor(.secondary )
            }
            
            Spacer()
            
            Text("\(price) $")
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(wines: wines[0])
    }
}
