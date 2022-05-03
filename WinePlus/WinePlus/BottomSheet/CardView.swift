//
//  CardView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/03.
//

import SwiftUI

struct CardView: View {
    var title = "Wines"
    var x = CGFloat = 100
    var y = CGFloat = -100
    
    var body: some View {
        VStack {
            Text(title).font(.custom("MadeCoachellaBlack", size:24))
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
