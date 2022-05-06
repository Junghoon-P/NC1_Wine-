//
//  ModelData.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/06.
//

import Foundation

var wines: [Wines] = load("wineMarket.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class WineData:ObservableObject {
    @Published var selectedTab = 0{
        willSet{
            var type: String
            switch newValue {
            case 0 :
                type = "red"
            case 1 :
                type = "white"
            case 2 :
                type = "sparkling"
            default :
                type = "red"
            }
            self.filteredList = wines.filter{ wine in
                return wine.type == type
            }
        }
    }
    @Published var filteredList: [Wines] = []
}
