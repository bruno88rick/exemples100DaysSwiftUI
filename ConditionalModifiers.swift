//
//  ConditionalModifiers.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI

struct ConditionalModifiers: View {
    @State private var useRedButton = false
    
    var body: some View {
    
        //more efficient way to do Condicional Modifiers:
        
        Button (/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/){
            useRedButton.toggle()
        }
        .foregroundColor(useRedButton ? .red : .blue)
        
        padding(50)
        
        //a slowly way to doo this is:
        
        if useRedButton {
            Button("Tap to change Color") {
                useRedButton.toggle()
            }
            .foregroundColor(.red)
        } else {
            Button("Tap to change Color") {
                useRedButton.toggle()
            }
            .foregroundColor(.blue)
        }
    }
}

#Preview {
    ConditionalModifiers()
}
