//
//  TotorialPageModel.swift
//  Overflow
//
//  Created by Дмитрий Гордиенко on 17.12.2022.
//

import Foundation

struct TutorialPage: Identifiable, Equatable {
    let id = UUID()
    var name: String
    var description: String
    var imageURL: String
    var tag: Int // to tag the image we are currently on
        
    static var samplePage = TutorialPage(name: "Example for the app", description: "This is a sample created for the test purposes", imageURL: "imageExample00", tag: 0)
    
    static var sampleList: [TutorialPage] = [
        TutorialPage(name: "First sample image", description: "This is the first sample image", imageURL: "imageExample00", tag: 0),
        TutorialPage(name: "Second sample image", description: "This is the second sample image", imageURL: "imageExample01", tag: 1),
        TutorialPage(name: "Third sample image", description: "This is the third sample image", imageURL: "imageExample02", tag: 2)
    ]
}
