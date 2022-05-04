//
//  TransactionRow.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct TransactionRow: View {
    var title = "Wines"
    var subtitle = "13 new wines"
    var number = "1"
    var amount = "$364.00"
    var color = Color.blue
    
    var body: some View {
        HStack(spacing:12){
            VStack {
                Text(number).bold()
            }
            .foregroundColor(.white)
            .frame(width: 50, height: 50)
            .background(color)
//            .mask(RoundedCornerStyle(radius: 30, corners: [.topLeft, .bottomRight]))
            
            VStack(alignment: .leading){
                Text(title).font(.headline)
                Text(subtitle).font(.subheadline)
                    .foregroundColor(.secondary )
            }
            
            Spacer()
            
            Text(amount)
        }
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
