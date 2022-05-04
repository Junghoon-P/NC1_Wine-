//
//  BottomSheetView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct BottomSheetView: View {
    @State var translation: CGSize = .zero
    
    var body: some View {
        VStack {
//            ContentView()
            BottomSheetContentView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .offset(y: translation.height)
        .gesture(
            DragGesture()
                .onChanged{ value in
                            translation = value.translation
                            }
        )
        .ignoresSafeArea(edges:.bottom)
        //제스처는 ingnoreSafeArea전에 사용하는 것이 좋다. 충돌한다.
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView()
            .background(.blue)
    }
}
