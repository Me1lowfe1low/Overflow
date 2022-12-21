//
//  MainGameView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct MainGameView: View {
    @State var currentWaterLevel: CGFloat = 0.6
    @State var vesselSize: CGFloat = 0.5
    @State var conteinersWithWater: [WaterContainerModel] = [WaterContainerModel(imageURL: "Bottle_00"),WaterContainerModel(imageURL: "Bottle_01"),WaterContainerModel(imageURL: "Bottle_02"),WaterContainerModel(imageURL: "Bottle_03"),WaterContainerModel(imageURL: "Bottle_04")]
    @State private var offset = CGSize.zero
    @State private var selected: WaterContainerModel? = nil
    
    var body: some View {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 4.0)
                        .stroke(lineWidth: 2.0)
                        .aspectRatio(3/4, contentMode: .fill)
                    Vessel(vesselHeighRatio: vesselSize)
                        .fill(LinearGradient(gradient: Gradient(colors: [Color.white,Color.gray]), startPoint: .leading, endPoint: .trailing))
                    Vessel(vesselHeighRatio: vesselSize)
                        .stroke(.black,style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                   WaterFlow(fillProgress: currentWaterLevel, vesselSizeRatio: vesselSize)
                        .fill(Color.blue).opacity(0.2)
                        .mask {
                            Vessel(vesselHeighRatio: vesselSize)
                        }
                }
                Spacer()
                Divider()
                HStack {
                    // Where should be the area with dragable objects
                    // Once we'll choose the object and drop it to the area above - there would be calculation of object
                        ForEach(conteinersWithWater) { waterContainer in
                            WaterContainerView(waterContainer: waterContainer)
                    }
                    
                }
                Button(action: {print("Continue")} , label: {Text("Continue")})
            }
            .padding()
    }
}

 struct MainGameView_Previews: PreviewProvider {
     static var previews: some View {
        MainGameView()
    }
 }
 
