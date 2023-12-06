//
//  EnviriomentModifiers.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI

struct EnviriomentModifiers: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //regular modifier that overrides envirioment modifiers if it extists
                .font(.largeTitle)
            //there are some modifiers that dont work as an envirioment and local modifiers, like blur. The line above try to replace the envirioment blur modifiers, but it doesn't, cause we cannot override some modifiers.
            Text("Hello, World!")
                .blur(radius: 0)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        //evirioment modifier that applies the font and blur to all texts of the HStack
        .font(.title)
        .blur(radius: 5)
    }
}

#Preview {
    EnviriomentModifiers()
}
