//
//  BottomSheetContentView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct BottomSheetContentView: View {
    var title = "Red Wines"
    var quantitiy = "13"
    var color = "mainRed"
    
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 3, style: .continuous)
                .frame(width:40, height: 5)
                .padding(8)
            
            HStack(spacing: 16) {
                Text(title).font(.largeTitle).bold()
                Spacer()
                Text(quantitiy).font(.title).bold()
//                Image("cart")
//                    .resizable()
//                    .frame(width: 25, height: 25)
//                Button {} label: {
//                    Label("Add", systemImage: "plust.circle.fill")
//                        .font(.body.bold())
//                        .foregroundColor(.white)
//                        .padding(8)
//                        .padding(.horizontal, 8)
//                }
//                .background(Color(UIColor(.accentColor)))
//                .cornerRadius(30)
            }
            .padding(24)
            
            HStack {
                CardView(title: "Chateau Pavie", x:-100, y:100)
                    .frame(width:140, height:200)
                    .padding(14)
                Spacer()
                CardView(title: "Chateau Figeac", x:100, y:-100)
                    .frame(width:140, height:200)
                    .padding(14)
            }
            .padding(24)
            .background(Color("subRed"))
            .cornerRadius(20)
            
            Text("Transactions")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(24)
            
            VStack {
                TransactionRow(title: "wine", subtitle: "3 transcations", number:"1", price: "$324.00", color: .blue)
                TransactionRow(title: "wine", subtitle: "3 transcations", number:"1", price: "$324.00", color: .blue)
                TransactionRow(title: "wine", subtitle: "3 transcations", number:"1", price: "$324.00", color: .blue)
            }
            .padding(.horizontal, 24)
            
            Spacer()
        }
        .background(Color(color))
    }
}

struct BottomSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetContentView()
    }
}
