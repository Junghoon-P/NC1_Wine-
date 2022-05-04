//
//  BottomSheetView.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/04.
//

import SwiftUI

struct BottomSheetView: View {
    @State var translation: CGSize = .zero
    @State var offsetY: CGFloat = 0
    @Binding var show : Bool
    
    var body: some View {
        ZStack {
            content
            
            Button {
                withAnimation(.easeOut){
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.bold())
                    .foregroundColor(.white)
                    .padding(9)
                    .background(Color(uiColor: .systemCyan))
                    .mask(Circle())
            }
            .frame(maxWidth: .infinity,   maxHeight: .infinity,  alignment: .topTrailing)
            .padding()
            .opacity(show ? 1: 0)
        }
    }
    
    var content: some View {
        GeometryReader { proxy in 
            VStack {
                //            ContentView()
                BottomSheetContentView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .offset(y: translation.height + offsetY)
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        translation = value.translation
                    }
                    .onEnded{ value in
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8)){
                            let snap = translation.height + offsetY
                            let quarter = proxy.size.height / 4
                            
                            if snap > quarter && snap < quarter*3 {
                                offsetY = quarter*2
                            } else if snap > quarter*3 && snap < quarter*4 {
                                offsetY = quarter*3 + 100
                            } else if snap > quarter*4 {
                                show.toggle()
                            } else {
                                offsetY = 0
                            }
                            
                            translation = .zero
                        }
                    }
            )
            //        .animation(.easeIn)
            //모든 서브뷰에 해당 애니메이션이 적용되기 때문에 지양해야 한다.
        .ignoresSafeArea(edges:.bottom)
        }
        //제스처는 ingnoreSafeArea전에 사용하는 것이 좋다. 충돌한다.
        // 대신 wihthAnimation을 사용해서 해당 change를 넣어주면 된다.
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        BottomSheetView(show: .constant(true))
            .background(.blue)
            .previewInterfaceOrientation(.portrait)
    }
}
