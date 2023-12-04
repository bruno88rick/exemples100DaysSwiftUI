//
//  ButtonsAndImages1.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 28/11/23.
//

import SwiftUI

struct ButtonsAndImages1: View {
    var body: some View {
        Text("My App")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
        ZStack(alignment: .center){
            VStack(alignment: .center){
                
                HStack(alignment: .center, spacing: 30){
                    Text("Line 1")
                    Text("Line 1")
                    Text("Line 1")
                }
                .foregroundColor(.secondary)
                .frame(width: 200, height: 30)
                .border(Color.primary)
                
                HStack(alignment: .center, spacing: 20){
                    Text("Line 2")
                    Text("Line 2")
                    Text("Line 2")
                }
                .frame(width: 200, height: 30)
                .foregroundColor(.mint)
                .border(Color.primary)
                
                HStack(alignment: .center, spacing: 10){
                    Text("Line 3")
                    Text("Line 3")
                    Text("Line 3")
                }
                .frame(width: 200, height: 30)
                .foregroundColor(.primary)
                .border(Color.primary)
                
            }
            .border(Color.primary)
        }
        .frame(minWidth: 200, maxWidth: .infinity, minHeight: 200 ,maxHeight: 500)
        .background(LinearGradient(stops: [
            .init(color: .green, location: 0.10),
            .init(color: .yellow, location: 0.90)
        ], startPoint: .top,endPoint: .bottom))
        //.ignoresSafeArea()
        
        Button {
            print("Button was Tapped")
        } label: {
            Text("Push me!")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
            Image(systemName: "pencil")
        }
        .padding()
        Button("Edit", systemImage: "pencil") {
            print("Edit button was tapped!")
        }
        
        Button {
        } label: {
            Label("Edit",systemImage: "pencil")
                .padding()
                .foregroundColor(.white)
                .background(.red)
        }
    }
    
}


#Preview {
    ButtonsAndImages1()
}
