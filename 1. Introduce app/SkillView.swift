//
//  SkillView.swift
//  1. introduce app
//
//  Created by lee on 7/15/24.
//

import SwiftUI

struct SkillView: View {
    var body: some View {
        VStack(alignment: .leading, spacing:10)
        {
            Text("좋아하는것")
                .font(.system(size: 20))
                .bold()
            Divider()
            Text(" - 각종고기")
            Text(" - 장본게 담겨있는 종량제 봉투")
            Text(" - 집에 새로 온 사람")
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.mint)
                .opacity(0.2)
                .shadow(radius:5)
        )
    }
}

#Preview {
    SkillView()
}
