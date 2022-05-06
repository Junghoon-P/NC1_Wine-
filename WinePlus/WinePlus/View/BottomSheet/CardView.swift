//
//  CardView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/03.
//

import SwiftUI

struct CardView: View {
    var title = "Wines"
    var x : CGFloat = 100
    var y : CGFloat = -100
    
    var body: some View {
        VStack {
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding(10)
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity)
        .background(Image("mainCard").scaleEffect(0.8).offset(x:x,y:y))
        .background(Color(UIColor(.accentColor)))
        .cornerRadius(10)
//        .mask(RoundedCornerStyle(radius: 30, corners: [.topLeft, .bottomRight]))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
