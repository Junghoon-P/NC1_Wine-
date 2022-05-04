//
//  ContentViewTest.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct ContentViewTest: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            HomeView()
                .onTapGesture {
//                    withAnimation(show.toggle())
                }
        }
        
        if show {
            Color.black.opacity(0.3).ignoresSafeArea()
            
//            BottomSheetView(show: $show)
//                .transition(.move(edge:.bottom))
//                .zIndex(1)
        }
    }
}

struct ContentViewTest_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewTest()
    }
}
