//
//  ContentView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var gameModes = Bundle.main.decode("DefaultGameModes")
    
    var body: some View {
        VStack(alignment: .leading) {
                TutorialView()
                Section(header:  Text("GAME OPTIONS:").font(.caption)) {
                    Spacer()
                    ForEach(gameModes) { gameModeDetailed in
                        NavigationLink(destination: {
                            // Checking for the mode name, possibly I'll use enum futher but not this time
                            gameModeDetailed.name == "Tap to fill" ?
                            AnyView(SecondGameView()) : AnyView(MainGameView())
                        }
                        ) {
                            // I'll change description to be brief and concise
                            GameOptionElement(gameMode: gameModeDetailed)
                        }
                    }
                }
            }
            .padding()
            .navigationBarTitle("App Name", displayMode: .inline)
            .toolbar {
                ToolbarItemGroup {
                    Menu {
                        Button("There would be a link to the leaderboard", action: { print("User goes to the leaderboard View")})
                    } label: {
                        Image(systemName: "list.bullet")
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
