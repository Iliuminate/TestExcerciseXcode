//
//  FeedView.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    
    var feed: Feed
    var myCustomAttributedModel = MyCustomTextModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(spacing: 12) {
                ProfileView(imageName: feed.user.imageName)
                VStack(alignment: .leading) {
                    Text(feed.user.userName)
                    Text("Published yesterday")
                        .font(.caption)
                        .foregroundColor(.gray)
                    TextWithAttributedString(
                        attributedString: myCustomAttributedModel.myCustomAttributedString(
                        "Carlos Prueba string adicional",
                        colors: [.red, .blue, .brown, .green]))
                        .frame(width: 200, height: 20)
                }
                Spacer()
                Button(action: actionButton) {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            Text(feed.text)
                .padding([.leading, .trailing])
            Image(feed.imageName)
            .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
    
    func actionButton() {
        print("CEDA: action button")
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(feed: HomePageModel().feeds[0])
    }
}
