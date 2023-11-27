//
//  ButtonsAndImages.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 27/11/23.
//

import SwiftUI

struct ButtonsAndImages: View {
    var body: some View {
        Button("Delete Things"){
            print("Now Deletting")
        }
        Button("Delete Things Func", action: executeDelete)
            .padding(50)
        Button("Delete Selection", role: .destructive, action: executeDelete)
            .padding()
        VStack {
            Button("Button 1") {}
                .buttonStyle(.bordered)
            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)
            Button("Button 3") {}
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)
            Button {
                print("Button was Tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
        }
    }
    
    func executeDelete(){
        print("Now Deleting by Function")
    }
    
}

#Preview {
    ButtonsAndImages()
}
