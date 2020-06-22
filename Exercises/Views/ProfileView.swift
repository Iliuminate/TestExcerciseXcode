//
//  ProfileView.swift
//  Exercises
//
//  Created by Carlos Diaz on 21/06/20.
//  Copyright © 2020 Carlos Diaz. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var imageName: String
    var body: some View {
        Image(imageName)
        .resizable()
        .aspectRatio(contentMode: .fill)
            .frame(width: 50, height: 50)
        .clipShape(Circle())
            .overlay(Circle().stroke(Color.blue, lineWidth: 5))
        .shadow(radius: 4)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(imageName: "fondo_azul")
            .previewLayout(.fixed(width: 100, height: 100))
    }
}
