//
//  CircleImage.swift
//  Creating and Combining Views
//
//  Created by Savannah McCoy on 2/21/20.
//  Copyright © 2020 Savannah McCoy. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("rock image")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 3)
            .frame(width: 300.0, height: 300.0)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
