//
//  ContentView.swift
//  SwiftUI Practice
//
//  Created by Kamil Wrobel on 3/9/20.
//  Copyright © 2020 Kamil Wrobel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Kamil", "Daniel", "David"]
    @State private var selectedStudent = "yyy"
    
    
    var body: some View {
        NavigationView {
            VStack{
                Form {
                    Section {
                        Text("Hello, \(name)")
                        Text("Hello, \(name)")
                        Text("Hello, \(selectedStudent)")
                        Text("Tap count: \(tapCount)")
                    }
                    Section {
                        ForEach(0 ..< 4) {
                            Text("Hello, Row # \($0)")
                        }
                    }
                    
                    Section {
                        
                        TextField("Please enter your name", text: $name)
                        
                        
                        Button("Tap Count \(tapCount)") {
                            self.tapCount += 1
                        }
                    }
                    
                    Section {
                        
                        Picker("SELECT YOUR STUDENT", selection: $selectedStudent) {
                            ForEach(0 ..< students.count){
                                Text(self.students[$0]).tag($0)
                            }
                        }
                        
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
