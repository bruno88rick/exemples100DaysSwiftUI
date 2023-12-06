//
//  ViewComposition.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI

struct CapsuleView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

struct ViewComposition: View {
    var body: some View {
        VStack(spacing: 10){
            CapsuleView(text: "First")
                .foregroundStyle(.red)
            CapsuleView(text: "Second")
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    ViewComposition()
}
