//
//  WinePlusApp.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/04/29.
//

import SwiftUI

@main
struct WinePlusApp: App {
    @StateObject var wineData = WineData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(wineData)
        }
    }
}
