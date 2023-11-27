//
//  ColorsAndFrames.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 27/11/23.
//

import SwiftUI

struct ColorsAndFrames: View {
    var body: some View {
        /*ZStack {
            Color.red
                .frame(width: 200, height: 200)
            Text("Your Content")
                .background(.yellow)
        }
        Spacer()
         
        ZStack{
            Color.yellow
                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
            Text("Content 2")
        }
        .background(.blue)
        Spacer()
         */
        ZStack{
            Color(red: 1, green: 0.8, blue: 1)
            Text("Another Content")
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ColorsAndFrames()
}
