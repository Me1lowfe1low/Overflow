//
//  MainGameView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import SwiftUI

struct MainGameView: View {
    var body: some View {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 4.0)
                        .stroke(lineWidth: 2.0)
                        .aspectRatio(3/4, contentMode: .fill)
                    Vessel()
                }
                Spacer()
                HStack {
                    // Where should be the area with dragable objects
                    // Once we'll choose the object and drop it to the area above - there would be calculation of object
                    RoundedRectangle(cornerRadius: 4.0)
                    RoundedRectangle(cornerRadius: 4.0)
                    RoundedRectangle(cornerRadius: 4.0)
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
 
