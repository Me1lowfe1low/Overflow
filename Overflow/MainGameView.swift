//
//  MainGameView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct MainGameView: View {
    @State var containersWithWater: [WaterContainerModel] = Bundle.main.decode("ContainerInfo.json")
    @Binding var gameData : MainGameViewModel
    
    var body: some View {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 4.0)
                        .stroke(lineWidth: 2.0)
                        .aspectRatio(3/4, contentMode: .fill)
                    Vessel(vesselHeighRatio: gameData.currentSizeOfTheVessel)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color.gray]), startPoint: .leading, endPoint: .trailing))
                    Vessel(vesselHeighRatio: gameData.currentSizeOfTheVessel)
                        .stroke(.black,style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                    WaterFlow(fillProgress: gameData.currentLevelOfWater, vesselSizeRatio: gameData.currentSizeOfTheVessel)
                        .fill(Color.blue).opacity(0.2)
                        .mask {
                            Vessel(vesselHeighRatio: gameData.currentSizeOfTheVessel)
                        }
                }
                .fixedSize(horizontal: false, vertical: true)
                Spacer()
                Divider()
                HStack {
                    ForEach(containersWithWater.indices, id: \.self ) { containerIndex in
                        WaterContainerView(waterContainer: containersWithWater[containerIndex]) {
                            withAnimation {
                                
                                
                                removeContainer(at: containerIndex)
                                increaseWaterLevel(at: containerIndex)
                            }
                        }
                    }
                }
                Button(action: {print("Continue")} , label: {Text("Continue")})
            }
            .padding()
    }
    
    func removeContainer(at index: Int) {
        containersWithWater.remove(at: index)
    }
    
    func increaseWaterLevel(at index: Int) {
        gameData.increaseLevelOfWater(income: containersWithWater[index].containerVolume)
    }
}

 struct MainGameView_Previews: PreviewProvider {
     static var previews: some View {
         MainGameView(gameData: .constant(MainGameViewModel.gameSample))
    }
 }
 
