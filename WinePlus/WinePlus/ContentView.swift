//
//  ContentView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("logo")
                    .resizable()
                    .frame(width: 36, height: 21)
                Spacer()
                Image("cart")
                    .resizable()
                    .frame(width: 25, height: 25)
                
            }
            .padding([.leading,.trailing],33)
            
            MainDivider(color: .black, width: 2)
            
            Image("mainCard")
                .resizable()
                .scaledToFill()
                .frame(width: 324, height: 231)
                .cornerRadius(30)
                .clipShape(Rectangle())
           
            VStack(alignment: .leading) {
                Text("Wine of the week")
                    .padding()
                    .font(.custom("MADECoachella", size: 24))
                    .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                HStack{
                    VStack{
                        Text("금주에 들어온 와인 리스트들입니다.")
//                            .padding(EdgeInsets(top: 0, leading: 33, bottom: 9, trailing: 33))
                        Text("다양한 페어링으로 식사를 더욱 즐겁게 해보세요.")
//                            .padding(EdgeInsets(top: 0, leading: 33, bottom: 9, trailing: 33))
                    }
                    Spacer()
                    Image("wine")
                        .resizable()
                        .frame(width: 41, height: 41)
                }
                MainDivider(color: .black, width: 1)
            }
            .padding([.leading,.trailing],33)
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
