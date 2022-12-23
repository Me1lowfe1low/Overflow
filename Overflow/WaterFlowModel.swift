//
//  WaterFlowModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 19.12.2022.
//

import SwiftUI

struct WaterFlowModel: View {
    @State var fillProgress: CGFloat = 0.4
    @State var vesselSize: CGFloat = 0.5
    
    var body: some View {
        WaterFlow(fillProgress: fillProgress, vesselSizeRatio: vesselSize)
            .fill(Color.blue).opacity(0.7)
    }
}

     struct WaterFlow: Shape {
         var fillProgress: CGFloat
         var vesselSizeRatio: CGFloat

         func path(in rect: CGRect) -> Path {
             Path { path in
                 if vesselSizeRatio < 1 {
                     let vesselHeight: CGFloat = 5 * (1 - vesselSizeRatio) * rect.height / 12
                     let progressHeight: CGFloat =  vesselHeight/fillProgress
                     path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
                     path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                     path.addLine(to: CGPoint(x: rect.maxX, y: progressHeight))
                     path.addLine(to: CGPoint(x: rect.minX, y: progressHeight))
                 } else {
                     let vesselHeight: CGFloat = rect.height
                     let progressHeight: CGFloat = vesselHeight * (1 - fillProgress)
                     path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
                     path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
                     path.addLine(to: CGPoint(x: rect.maxX, y: progressHeight))
                     path.addLine(to: CGPoint(x: rect.minX, y: progressHeight))
                 }
             }
         }
     }


struct WaterFlowModel_Previews: PreviewProvider {
    static var previews: some View {
        WaterFlowModel()
    }
}

