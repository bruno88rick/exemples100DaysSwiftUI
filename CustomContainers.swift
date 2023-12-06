//
//  CustomContainers.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 06/12/23.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    //we can do with @ViewBuilder so we can call this without a Stack
    //@ViewBuilder let content1:(Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0..<rows, id: \.self) { row in
                HStack{
                    ForEach(0..<columns, id: \.self) { column in
                        content(row, column)
                    }
                }
            }
        }
    }
}

struct CustomContainers: View {
    var body: some View {
        //calling GridStack an returning 1 kind of view ou 1 view
        GridStack(rows: 4, columns: 4) { row, col in
            Text("R\(row) C\(col)")
        }
        .padding(80)
        
        //Doing the same but now returning more than 1 view, using a Stack
        GridStack(rows: 4, columns: 4) { row, col in
            ZStack(alignment: .topTrailing){
                Color.blue
                VStack(spacing: 10){
                    Image(systemName: "\(row * 4 + col).circle")
                    Text("R\(row) C\(col)")
                }
                .foregroundStyle(.primary)
            }
        }
        
        //Doing the same but with the "@ViewBuilder"
        
        /*
        GridStack(rows:4, columns:4) { row, col in
            Image(systemName: "\(row * 4 + col).circle")
            Text("R\(row) C\(col)")
        }
        */
        
        
    }
}

#Preview {
    CustomContainers()
}
