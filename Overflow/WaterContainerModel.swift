//
//  WaterContainerModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 21.12.2022.
//

import Foundation

struct WaterContainerModel: Identifiable, Codable {
    let id = UUID()
    var imageURL: String
    var containerVolume: CGFloat
    
    static var containerSample = WaterContainerModel(imageURL: "Bottle_01", containerVolume: 0.1)
}

