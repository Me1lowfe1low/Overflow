//
//  TutorialPageView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 18.12.2022.
//

import SwiftUI

struct TutorialPageView: View {
    var tutorialPage: TutorialPage
    
    var body: some View {
        VStack(spacing: 20) {
            Image(tutorialPage.imageURL)
                .resizable()
                .scaledToFit()
                .aspectRatio(9/16, contentMode: .fill)
                .cornerRadius(40.0)
                .padding()
            //Text(tutorialPage.description)
            //    .font(.subheadline)
            //Spacer()
        }
    }
}

struct TutorialPageView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialPageView(tutorialPage: TutorialPage.samplePage)
    }
}
