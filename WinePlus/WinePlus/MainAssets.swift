//
//  MainAssets.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/02.
//

import SwiftUI


struct MainDivider: View {
    //구분선
    var color: Color = .black
    var width: CGFloat = 1
    //CG
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
            .padding(EdgeInsets(top: 0, leading: 33, bottom: 12, trailing: 33))
    }
}

//divider  init으로 대체해서 만들어보기



