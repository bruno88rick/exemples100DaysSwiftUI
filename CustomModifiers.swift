//
//  CustomModifiers.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI


// i can create custom modifiers to apply on a view like this
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

//and we can create a extension of View to use our custom modifier without the .modifiers above, like this

extension View {
    func TitleStyle() -> some View {
        modifier(Title())
    }
}

// and also, we can create fully custom views too, with other views and modifiers, like this

struct Watermark: ViewModifier {
    
    var text: String
    
    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing){
            
            content
            
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
    }
}

//and do a extension to facilitate the use in our code:

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct CustomModifiers: View {
    var body: some View {
        
        //using our custom modifier without extesion
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .modifier(Title())
        
        //using ouur custom modifier with the extension
        Text("Hello, Brazil!")
            .TitleStyle()
        
        //using our water mark modifier in a view
        ZStack{
            VStack(spacing: 10){
                
            }
            .padding(10)
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking With SwiftUI")
            
            Text("Exemple of Custom View Modifier:")
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    CustomModifiers()
}
