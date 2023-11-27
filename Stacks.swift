//
//  Stack.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 27/11/23.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack {
            Text("Hello World")
            Text("This is anothehr text View")
        }
        Spacer()
        
        VStack(spacing: 20){
            Text("Hello World")
            Text("This is a View with spacing: 20 on a VStack, after another Text View.")
        }
        Spacer()
        
        VStack(alignment: .leading){
            Text("Hello Word!")
            Text("This is a View with spacing: 20 and alignment: .leading (left-to-right alignment) on a VStack, after another Text View.")
        }
        Spacer()
        
        HStack(spacing: 20){
            Text("Hello World")
            Text("This inside a HStack")
        }
        Spacer()
        
        VStack{
            Spacer()
            Text("First")
            Text("Second")
            Text("Third")
            Spacer()
            Spacer()
        }
        
        Spacer()
        
        ZStack{
            Text("Hello World!")
            Text("This is innside a ZStack")
        }
        
        Spacer()
        
        ZStack(alignment: .top){
            Text("Hello World")
            Text("This inside a ZStack, alignment: .top")
        }
        
        //Trying place several horizontal Stack inide a Vertical Stack (3x3 grid)
        
        Spacer()
        
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .center, spacing: 5){
                Text("Line 1 Col.1")
                Text("Line 1 Col.2")
                Text("Line 1 Col.3")
            }
            HStack(alignment: .top , spacing: 5) {
                Text("Line 2 Col.1")
                Text("Line 2 Col.2")
                Text("Line 2 Col.3")
            }
            HStack(alignment: .bottom, spacing: 5) {
                Text("Line 3 Col.1")
                Text("Line 3 Col.2")
                Text("Line 3 Col.3")
            }
        }
        
    }
}

#Preview {
    Stacks()
}
