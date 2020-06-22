//
//  StoriesView.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import SwiftUI

struct StoriesView: View {
    var stories: [Story]
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(stories, id: \.self) {story in
                        CardView(story: story)
                    }
                }
                .padding([.leading, .trailing], 8)
                .clipped()
            }
            Spacer()
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: HomePageModel().stories)
    }
}
