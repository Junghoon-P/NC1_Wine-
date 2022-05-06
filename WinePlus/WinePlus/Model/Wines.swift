//
//  Wines.swift
//  WinePlus
//
//  Created by JungHoonPark on 2022/05/06.
//

import Foundation

struct Wines: Hashable, Codable {
    var Wine: String
    var years: Int
    var origin: String
    var quantitiy: Int
    var price: String
    var type: String
    var image: String
}
