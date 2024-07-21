//
//  TodoDetailView.swift
//  Todo
//
//  Created by lee on 7/21/24.
//

import SwiftUI

struct TodoDetailView: View {
    
    @State var todo: Todo
    
    var body: some View {
        VStack{
            TextField("todo title", text: $todo.title)
                .font(.title2)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 2)
                )
            
            TextEditor(text: $todo.description)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 2)
                )
        }
        .padding()
        .navigationTitle("Edit Stack")
    }
}

#Preview {
    TodoDetailView(todo: Todo(title: "2번째 화면의 투두"))
}
