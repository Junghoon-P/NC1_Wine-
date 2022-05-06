//
//  BottomSheetContentView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct BottomSheetContentView: View {
    @State var title = ""
    @State var quantitiy = ""
    @State var color = ""
    @State var imageUrl = ""
    @EnvironmentObject var wineData : WineData
    
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
                CardView(title: "Choice of sommelier", x:-100, y:100)
                    .frame(width:140, height:200)
                    .padding(14)
                Spacer()
                CardView(title: "Well matched dish", x:100, y:-100)
                    .frame(width:140, height:200)
                    .padding(14)
            }
            .padding(24)
            .background(Color("mainBackground").opacity(0.4))
            .cornerRadius(20)
            .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.white, lineWidth: 2)
                    )
            
            Text("Newly stocked")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(24)
            
            ScrollView{
                ForEach(wineData.filteredList.indices, id:\.self) { index in
                    TransactionRow(title: wineData.filteredList[index].Wine, subtitle: wineData.filteredList[index].years, number: index+1, price: wineData.filteredList[index].price, wines: wineData.filteredList[index])
            }
            .padding(.horizontal, 24)
            }
            Spacer()
        }
        .background(Color(color))
        .onAppear{
            switch wineData.selectedTab{
            case 0 :
                self.title = "Red Wines"
                self.color = "mainRed"
                print(wineData.selectedTab)
            case 1 :
                self.title = "White Wines"
                self.color = "mainMint"
            case 2 :
                self.title = "Sparkling Wines"
                self.color = "mainWhite"
            default :
                self.title = "Red Wines"
                self.color = "mainRed"
            }
            self.quantitiy = "\(wineData.filteredList.count)"
        }
    }
}

struct BottomSheetContentView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetContentView()
    }
}
