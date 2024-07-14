//
//  Photo.swift
//  1. introduce app
//
//  Created by lee on 7/15/24.
//

import SwiftUI

struct Photo: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                DogImageView(imageName: "dog1", borderColor: Color.red)
                DogImageView(imageName: "dog2", borderColor: Color.blue)
                DogImageView(imageName: "dog3", borderColor: Color.green)
            }
            
        }
        .padding()
        .scrollIndicators(.hidden)
    }
}

struct DogImageView:View{
    var imageName: String
    var borderColor: Color
    
    var body: some View{
        Image(imageName)
            .resizable()
            .frame(width: 160, height:160)
            .overlay(
                Rectangle()
                    .stroke(borderColor, lineWidth: 4))
    }
}


#Preview {
    Photo()
}
