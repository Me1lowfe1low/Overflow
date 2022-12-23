//
//  MainGameViewModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 22.12.2022.
//

import Foundation

class MainGameViewModel: ObservableObject {
    @Published var levelScore: Int = 0
    @Published var totalScore: Int = 0
    @Published var currentLevelOfWater : CGFloat = 0.0
    @Published var currentSizeOfTheVessel : CGFloat = 0.5
    @Published var gameMode : gameModeList
    @Published var livesAmount : Int = 3
    
    init(gameMode: gameModeList) {
        self.gameMode = gameMode
    }
    
    func levelPasseed() {
        self.totalScore += levelScore
    }
    
    func liveUsed() {
        self.livesAmount -= 1
    }
    
    func liveCheck() -> Bool {
        livesAmount > 0 ? false : true
    }
    
    func increaseLevelOfWater(income: CGFloat) {
        self.currentLevelOfWater += income
    }
    
    static var gameSample : MainGameViewModel = MainGameViewModel(gameMode: gameModeList.mainGame)
}
