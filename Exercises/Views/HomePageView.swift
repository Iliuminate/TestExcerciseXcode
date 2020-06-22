//
//  HomePageView.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import SwiftUI

struct HomePageView: View {
    var model = HomePageModel()
    
    init() {
        // To remove only extra separators below the list:
        UITableView.appearance().tableFooterView = UIView()
        
        // To remove all separators including the actual ones:
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        NavigationView {
            List {
                StoriesView(stories: model.stories)
                .shadow(color: .black, radius: 4, x: 1, y: 2)
                .listRowInsets(EdgeInsets())
                
                ForEach(model.feeds) { feed in
                    FeedView(feed: feed)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle("Social Network")
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
