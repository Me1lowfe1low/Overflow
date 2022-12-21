//
//  WaterContainerView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 21.12.2022.
//

import SwiftUI

struct WaterContainerView: View {
    var waterContainer: WaterContainerModel
    
    @State private var offset = CGSize.zero
    
    var body: some View {
        Image(waterContainer.imageURL)
            .resizable()
            .scaledToFit()
            .offset(x: offset.width, y:  offset.height)
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offset = gesture.translation
                    }
                    .onEnded {_ in
                        if offset.height < 50 {
                            print("Water level increased")
                        } else {
                            offset = .zero
                        }
                        
                    }
            )
    }
}


struct WaterContainerView_Previews: PreviewProvider {
    static var previews: some View {
        WaterContainerView(waterContainer: WaterContainerModel.containerSample)
    }
}
