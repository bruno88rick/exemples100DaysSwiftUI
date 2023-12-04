//
//  Modifiers.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 04/12/23.
//

import SwiftUI

struct Modifiers: View {
    var body: some View {
        Button("Hello, World!"){
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
        
        .padding(30)
        
        Text("Hello, World")
            .padding()
            .background(.red)
            .padding()
            .background(.blue)
            .padding()
            .background(.green)
            .padding()
            .background(.yellow)
        
    }
}

#Preview {
    Modifiers()
}
