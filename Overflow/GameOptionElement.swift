//
//  GameOptionElement.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct GameOptionElement: View {
    var body: some View {
        VStack {
            Text("Game Option Name")
            Divider()
                .padding(.horizontal)
            HStack {
                Text("Some information describing this game option")
            }
            .font(.caption)
        }
    }
}

struct GameOptionElement_Previews: PreviewProvider {
    static var previews: some View {
        GameOptionElement()
    }
}
