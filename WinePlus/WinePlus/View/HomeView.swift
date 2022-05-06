//
//  HomeView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct HomeView: View {
    @Binding var show : Bool
    @EnvironmentObject var wineData : WineData
    
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
                    .font(.custom("MADECoachella", size: 24))
                HStack(alignment: .bottom){
                    Text("Here's a list of wine recommendations for this week. \nExperience a variety of wines.")
                    //                            .padding(EdgeInsets(top: 0, leading: 33, bottom: 9, trailing: 33))
                    Spacer()
                    Image("wine")
                        .resizable()
                        .frame(width: 41, height: 41)
                }
            }
            .padding([.leading,.trailing],33)
            MainDivider(color: .black, width: 1)
            Text("Newly stocked wine")
                .font(.custom("MADECoachella", size: 24))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.leading,.trailing],33)
            MainDivider(color: .black, width: 1)
            
            ZStack {
                ModalTab(type:0)
                    .onTapGesture {
                        withAnimation{
                            show.toggle()
                            self.wineData.selectedTab=0
                            print(self.wineData.selectedTab)
                        }
                    }
                
                ModalTab(type:1)
                    .onTapGesture {
                        withAnimation{
                            show.toggle()
                            self.wineData.selectedTab=1
                        }
                    }
                    .offset(x: 0, y: 85)
                ModalTab(type:2)
                    .onTapGesture {
                        withAnimation{
                            show.toggle()
                            self.wineData.selectedTab=2
                        }
                    }
                    .offset(x: 0, y: 170)
            }
//            .ignoresSafeArea(edges:.bottom)
            
            //            Spacer()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(show: .constant(false))
    }
}
