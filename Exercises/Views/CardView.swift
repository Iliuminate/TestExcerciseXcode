//
//  CardView.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import SwiftUI

struct CardView: View {
    let widthCard = UIScreen.main.bounds.size.width * 0.333 - 12.0
    let heightCard = UIScreen.main.bounds.size.height * 0.288
    
    var story: Story
    var body: some View {
        ZStack {
            BackgroundView(imageName: story.imageName)
            HStack {
                VStack(alignment: .leading) {
                    ProfileView(imageName: story.user.imageName)
                    Spacer()
                    Text(story.user.userName)
                        .foregroundColor(.white)
                        .font(.system(size: 22.0))
                        .lineLimit(1)
                }
                .padding()
                Spacer()
            }
            .frame(width: widthCard, height: heightCard)
        }
        .frame(width: widthCard, height: heightCard)
        .cornerRadius(18)
        .clipped()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(story: HomePageModel().stories[0])
            .previewLayout(.fixed(width: 300, height: 500))
    }
}
