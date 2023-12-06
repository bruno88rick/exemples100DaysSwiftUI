//
//  SomeView.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI

struct SomeView: View {
    
    //body property retuns some view cause don't matter for us what kind of view it will return, but swift knows. It's like: "I'll return some view, but this time I don't know what kind of view i will return, and it could be a lots of diferent views, all conforming to View protocol." That's because code like this compiles: I`m returning a view of type "Text".
    
    var body: Text {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    SomeView()
}
