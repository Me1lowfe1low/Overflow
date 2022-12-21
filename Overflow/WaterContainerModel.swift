//
//  WaterContainerModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 21.12.2022.
//

import Foundation
import SwiftUI

struct WaterContainerModel: Identifiable {
    let id = UUID()
    let imageURL: String
    
    static var containerSample = WaterContainerModel(imageURL: "Bottle_01")
}
