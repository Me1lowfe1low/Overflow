//
//  VesselView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 19.12.2022.
//

import SwiftUI

struct VesselView: View {
    var body: some View {
        Vessel()
    }
}

struct Vessel: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX-rect.midX/4, y: rect.midY-rect.midY/30))
            path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY-rect.midY/30))
            path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY))
            path.addLine(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY))
            path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/4,y: rect.midY+rect.midY/8), control: CGPoint(x: rect.midX,y: rect.midY))
            //path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/6,y: rect.midY+rect.midY/2), control: CGPoint(x: rect.midX+rect.midX/2,y: rect.midY+rect.midY/4))
            path.addQuadCurve(to: CGPoint(x: rect.midX+rect.midX/6,y: rect.maxY-rect.maxY/30), control: CGPoint(x: rect.midX+rect.midX/2,y: rect.midY+rect.midY/4))
            //path.addLine(to: CGPoint(x: rect.midX-rect.midX/6,y:  rect.midY+rect.midY/2))
            path.addLine(to: CGPoint(x: rect.midX-rect.midX/6,y:  rect.maxY-rect.maxY/30))
            path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4,y: rect.midY+rect.midY/8), control: CGPoint(x: rect.midX-rect.midX/2,y: rect.midY+rect.midY/4))
            path.addQuadCurve(to: CGPoint(x: rect.midX-rect.midX/4,y: rect.midY), control: CGPoint(x: rect.midX,y: rect.midY))
        }
    }
}

struct VesselView_Previews: PreviewProvider {
    static var previews: some View {
        VesselView()
    }
}
