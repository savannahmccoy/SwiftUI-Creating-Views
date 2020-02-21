//
//  ContentView.swift
//  Creating and Combining Views
//
//  Created by Savannah McCoy on 2/18/20.
//  Copyright © 2020 Savannah McCoy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        
        // ---- OUTER VERTICAL STACK ----
        ScrollView {
            
            VStack {
    
                // MAP VIEW
                MapView()
                    .edgesIgnoringSafeArea(.top)
                    .frame(height: 250)

                // IMAGE
                CircleImage()
                    .offset(y: -130)
                    .padding(.bottom, -200)
                
                
                // ---- INNER VERTICAL STACK ----
                VStack (alignment: .leading){

                    
                    // TITLE TEXT
                    Text("Turtle Rock")
                        .font(.system(size: 35))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    
                    // ---- INNER HORIZONTAL STACK ----
                    HStack {
                        
                        // SUB TEXT
                        Text("Joshua Tree National Park")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Text("California")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 10)

                    
                    CustomDivider()
                    
                    // DESCRIPTION HEADER
                    Text("Description")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 15)
                        .padding(.bottom, 5)
                    
                    Text("Turtle Rock is a neighborhood in the south part of Irvine, Orange County, California, near Concordia University, Irvine and the University of California, Irvine. It is bounded to the north by University Drive and Mason Regional Park, to the east by the Strawberry Farms Golf Club and Ridgeline Drive, to the south by Shady Canyon Drive, and to the west by Culver Drive.")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Image("pic1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 380, height: 200)
                        .clipped()
                        .cornerRadius(5)
                    
                    Text("Turtle Rock is one of the five 'villages' originally forming Irvine; its 1967 founding is commemorated by a sculpture of a turtle in Turtle Rock Community Park, at the corner of Turtle Rock and Sunnyhill Drives. A two-lane internal loop road, Turtle Rock Drive, encircles the village and carries traffic between housing developments and the city's main streets.")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .font(.subheadline)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Image("pic2")
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 380, height: 200)
                       .clipped()
                       .cornerRadius(5)
                    
                    
                    Text("SOUCRE: Wikipedia")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 15)
                                    
                }
                .padding()
                Spacer()
                
             }
        
        }
        

        .background(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
        .edgesIgnoringSafeArea(.all)

    }
}

struct CustomDivider: View {
    let color: Color = .white
    let width: CGFloat = 1
    var body: some View {
        Rectangle()
            .fill(color)
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
