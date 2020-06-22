//
//  Models.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import Foundation

struct Story: Hashable {
    var imageName: String
    var user: User
}

struct User: Hashable {
    var imageName: String
    var userName: String
}

struct Feed: Hashable, Identifiable {
    var id = UUID()
    var imageName: String
    var text: String
    var user: User
}

struct HomePageModel {
    var stories: [Story] = {
        var user: User = User(imageName: "fondo_azul", userName: "Carlos Dz")
        return [Story(imageName: "crysis_1", user: user),
                Story(imageName: "crysis_2", user: user),
                Story(imageName: "crysis_3", user: user),
                Story(imageName: "crysis_1", user: user),
                Story(imageName: "crysis_2", user: user),
                Story(imageName: "crysis_3", user: user)]
    }()
    
    var feeds: [Feed] = {
        var user: User = User(imageName: "fondo_azul", userName: "Carlos Dz")
        return [Feed(imageName: "1", text: "Desde lo Alto", user: user),
                Feed(imageName: "2", text: "Mirada siniestra", user: user),
                Feed(imageName: "3", text: "Aputandote", user: user),
                Feed(imageName: "4", text: "La espalda lo dice", user: user),
                Feed(imageName: "5", text: "Armas", user: user),
                Feed(imageName: "6", text: "Solo miradas", user: user)]
    }()
}
