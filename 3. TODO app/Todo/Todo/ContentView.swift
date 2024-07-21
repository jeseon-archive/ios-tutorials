//
//  ContentView.swift
//  Todo
//
//  Created by lee on 7/21/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var TodoList: [Todo] =
    [
        Todo(title: "코딩연습하기"),
        Todo(title: "앱만들기"),
        Todo(title: "지원하기"),
    ]
    
    func addTodo()
    {
        withAnimation{
            print("플러스 버튼이 눌렸어요.")
            
            let newTodo = Todo(title: "새로운 Stack")
            TodoList.append(newTodo)
        }
    }
    
    func delteTodo(indexSet : IndexSet)
    {
        withAnimation
        {
            for index in indexSet
            {
                TodoList.remove(at: index)
            }
        }
    }
    
    var body: some View {
      
        NavigationStack{
            List{
                ForEach(TodoList){ todo in
                    HStack{
                        
                        if(todo.isCompleted == true)
                        {
                            Image(systemName: "circle.fill")
                                .foregroundColor(Color.pink)
                                .onTapGesture
                            {
                                todo.isCompleted.toggle()
                            }
                            
                        }
                        else
                        {
                            Image(systemName: "circle")
                                .foregroundColor(Color.pink)
                                .onTapGesture
                            {
                                todo.isCompleted.toggle()
                            }
                        }
                        
                        NavigationLink{
                            TodoDetailView(todo: todo)
                            
                            
                        } label : {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted ?
                                                 Color.gray : Color.primary)
                            
                        }
                        
                    }
                }
                .onDelete(perform: delteTodo)
                
                
            }
            
            .listStyle(.plain)
            .navigationTitle("할일 Stack")
            .toolbar
            {
                ToolbarItem{
                    EditButton()
                }
                ToolbarItem{
                    Button(action: addTodo, label:{
                        Image(systemName: "plus")
                    })
                }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
