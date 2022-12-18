//
//  GameOptionModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 18.12.2022.
//

import Foundation

struct GameOption: Identifiable, Decodable {
    let id = UUID()
    var name: String
    var description: String
    
    static var sampleGameMode = GameOption(name: "First Game", description: "Brief description for this game")
    static var sampleGameModes: [GameOption] = [
    GameOption(name: "First game name", description: "Brief description for the first game" ),
    GameOption(name: "Second game name", description: "Brief description for the second game")
    ]
}
