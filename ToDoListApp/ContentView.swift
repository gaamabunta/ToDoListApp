//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Prakhar Singh on 10/17/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks = [String]()
    @State private var newTask = ""
    var body: some View {
        NavigationView {
            VStack {
                HStack{
                    TextField("Enter new task", text:$newTask ).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    Button(action: addTask) {Text("Add").padding().background(Color.blue).foregroundColor(.white).cornerRadius(8)
                    }
                }
                List{
                    ForEach(tasks, id: \.self){ task in
                        Text(task)
                    }
                    .onDelete(perform: deleteTask)
                }
            }
            .navigationTitle("To-Do List")
        }
    }
    
    func addTask(){
        if !newTask.isEmpty{
            tasks.append(newTask)
            newTask = ""
        }
    }
    func deleteTask(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
    }
struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
                
