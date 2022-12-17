//
//  ContentView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                // This section will hold and brief tutorial of the game. Not decided if it would be scrollable view or sliding view
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack {
                        imagePlaceholder
                        imagePlaceholder
                        imagePlaceholder
                    }
                }
                Spacer()
                Section(header: Text("Choose your game")) {
                    List {
                        NavigationLink(destination: MainGameView()) { GameOptionElement()
                        }
                        GameOptionElement()
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
    
    var imagePlaceholder : some View {
        Image("imageExample")
            .resizable()
            .aspectRatio(9/16, contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
