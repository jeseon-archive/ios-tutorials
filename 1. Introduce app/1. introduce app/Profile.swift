//
//  Profile.swift
//  1. introduce app
//
//  Created by lee on 7/15/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            HStack{
                Image("dogProfile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.teal, lineWidth: 2)
                    )
                
                VStack(alignment: .leading)
                {
                    Text("이름: 몽이")
                    Text("푸들")
                    Text("2023년생")
                }
                .font(.system(size: 20))
                .padding(.leading, 20)
            }
        }
        .padding()
    }
}


#Preview {
    Profile()
}
