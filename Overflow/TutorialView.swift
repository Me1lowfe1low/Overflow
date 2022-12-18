//
//  TutorialView.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 18.12.2022.
//

import SwiftUI

struct TutorialView: View {
    @State private var tutorialPageIndex = 0
    private let tutorialPages: [TutorialPage] = TutorialPage.sampleList
    private let dotSlideMenu = UIPageControl.appearance()
    
    var body: some View {
        TabView(selection: $tutorialPageIndex) {
            ForEach(tutorialPages) { page in
                VStack {
                    Spacer()
                    TutorialPageView(tutorialPage: page)
                    Spacer()
                    //page == tutorialPages.last ? Button("Start Over", action: startTutorialOver) : Button("Next", action: nextTutorialPage)
                    //Spacer()
                }
                .tag(page.tag)
                
            }
        }
        .animation(.easeOut, value: tutorialPageIndex)
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .interactive))
        .onAppear {
            dotSlideMenu.currentPageIndicatorTintColor = .black
            dotSlideMenu.pageIndicatorTintColor = .gray
        }
    }
    
    func nextTutorialPage() {
        tutorialPageIndex += 1
    }
   
    func startTutorialOver() {
        tutorialPageIndex = 0
    }
    
    func previousTutorialPage() {
        tutorialPageIndex -= 1
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
