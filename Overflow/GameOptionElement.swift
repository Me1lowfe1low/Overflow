//
//  GameOptionElement.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct GameOptionElement: View {
    var gameMode: GameOption
    
    var body: some View {
        VStack {
            Text(gameMode.name)
            Divider()
                .padding(.horizontal)
            HStack {
                Text(gameMode.description)
            }
            .font(.caption)
        }
    }
}

struct GameOptionElement_Previews: PreviewProvider {
    static var previews: some View {
        GameOptionElement(gameMode: GameOption.sampleGameMode)
    }
}
