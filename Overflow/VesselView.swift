//
//  VesselView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 19.12.2022.
//

import SwiftUI

struct VesselView: View {
    @State var heightRatio: CGFloat = 0.2
    
    
    var body: some View {
        Vessel(vesselHeighRatio: heightRatio)
    }
}

struct Vessel: Shape {
    var vesselHeighRatio: CGFloat
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let vesselHeight = ( 1 - vesselHeighRatio ) * rect.height
            let vesselMidHeigh = vesselHeight / 2
            let vesselBottleNeck = vesselMidHeigh-vesselMidHeigh / 8
            let vesselHeigh = 5 * vesselHeight / 12
            
            path.move(to: CGPoint(x: rect.midX-rect.midX/4, y: rect.maxY))
            path.addLine(to: CGPoint(x: rect.midX+rect.midX/4, y: rect.maxY))
            path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/4, y: vesselMidHeigh), control: CGPoint(x: rect.maxX-rect.midX/6, y: vesselMidHeigh))
            path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/4, y: vesselBottleNeck), control: CGPoint(x: rect.midX,y: vesselMidHeigh))
            path.addLine(to: CGPoint(x: rect.midX+rect.midX/4, y: vesselHeigh))
            path.addLine(to: CGPoint(x: rect.midX-rect.midX/4, y: vesselHeigh))
            path.addLine(to: CGPoint(x: rect.midX-rect.midX/4, y: vesselBottleNeck))
            path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4, y: vesselMidHeigh), control: CGPoint(x: rect.midX, y: vesselMidHeigh))
            path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4, y: rect.maxY), control: CGPoint(x: rect.midX/6, y: vesselMidHeigh))
        }
    }
}

struct VesselView_Previews: PreviewProvider {
    static var previews: some View {
        VesselView()
    }
}





/*path.move(to: CGPoint(x: rect.midX-rect.midX/4, y: rect.midY-rect.midY/vesselSize))
path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY-rect.midY/vesselSize))
path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY))
path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY))
path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY+rect.midY/8), control: CGPoint(x: rect.midX,y: rect.midY))
path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/6,y: rect.maxY-rect.maxY/vesselSize), control: CGPoint(x: rect.midX+rect.midX/2,y: rect.midY+rect.midY/4))
path.addLine(to: CGPoint(x: rect.midX-rect.midX/6,y:  rect.maxY-rect.maxY/vesselSize))
path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4,y: rect.midY+rect.midY/8), control: CGPoint(x: rect.midX-rect.midX/2,y: rect.midY+rect.midY/4))
path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4,y: rect.midY), control: CGPoint(x: rect.midX,y: rect.midY))
path.addLine(to: CGPoint(x: rect.midX-rect.midX/4, y: rect.midY-rect.midY/vesselSize))*/
