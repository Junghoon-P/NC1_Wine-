//
//  ContentView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/04/29.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    
    var body: some View {
        ZStack {
            HomeView()
            
            if show {
                Color.black.opacity(0.3).ignoresSafeArea()
                
                BottomSheetView(show: $show)
                    .transition(.move(edge: .bottom))
                    .zIndex(1)
                
            }
        }
        .onTapGesture {
            withAnimation{
                show.toggle()
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
