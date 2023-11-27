//
//  Gradients.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 27/11/23.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        ZStack{
            /*VStack(spacing: 0){
                Text("Title Content")
                    .foregroundStyle(.primary)
                LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
            }*/
            /*VStack(spacing: 0){
                LinearGradient(stops: [
                    .init(color: .white, location: 0.45),
                    .init(color: .red, location: 0.55)
                ], startPoint: .top, endPoint: .bottom)
            }*/
            /*VStack (spacing: 0) {
                RadialGradient(colors: [.white, .black], center: .center, startRadius: 20, endRadius: 200)
            }*/
            /*VStack(spacing: 0){
                AngularGradient(colors: [.red, .yellow, .green, . blue, .purple, .red], center: .center)
            }
             */
            /*VStack (spacing: 0){
                Text("Your Content")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(.black.gradient)
            }*/
            VStack(spacing: 0){
                Text("Your content")
                    .frame(maxWidth: .infinity, maxHeight: . infinity)
                    .foregroundStyle(.white)
                    .background(LinearGradient(colors:  [
                        .white, .black], startPoint: .top, endPoint: .bottom))
            }
        }
    }
}

#Preview {
    Gradients()
}
