//
//  ModalTab.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/06.
//

import SwiftUI

struct ModalTab: View {
    @State var title = ""
    @State var color = ""
    @State var quantity = ""

    var type = 0
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(Color(color))
                .frame( height: 251)
            
            HStack{
                Text(title)
                    .font(.custom("MADECoachella", size: 24))
                Spacer()
                Text(quantity)
                    .font(.custom("CaramelandVanilla", size: 20))
            }
            .padding(EdgeInsets(top: 0, leading: 33, bottom: 150, trailing: 33))
        }
        .onAppear{
            switch self.type{
            case 0 :
                self.title = "Red Wines"
                self.color = "mainRed"
                self.quantity="10"
            case 1 :
                self.title = "White Wines"
                self.color = "mainMint"
                self.quantity="1"
            case 2 :
                self.title = "Sparkling Wines"
                self.color = "mainWhite"
                self.quantity = "3"
            default :
                self.title = "Red Wines"
                self.color = "mainRed"
            }
        }
    }
    
}


struct ModalTab_Previews: PreviewProvider {
    static var previews: some View {
        ModalTab()
    }
}
