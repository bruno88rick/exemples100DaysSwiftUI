//
//  ViewsAsProperties.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 05/12/23.
//

import SwiftUI

struct ViewsAsProperties: View {
    
    //I can do with clousures, and put lots of views (but inside a Stack to group all views or using @ViewBuiler ou Group)
    
    //Returning 1 View
    var motto1: some View {
        Text("Draco dormiens")
    }
    
    //Returning 2 Views with a Stack
    var spells: some View {
        HStack{
            Text("Draco dormiens")
            Text("nunquan titillandus")
        }
    }
    
    //Returning 2 or momre views with Goup
    var spells2: some View{
        Group {
            Text("Draco dormiens")
            Text("nunquan titillandus")
        }
    }
    
    //Pauls preference: With @ViewBuilder declared
    
    @ViewBuilder private var spells3: some View {
        Text("Draco dormiens")
        Text("nunquan titillandus")
    }
    
    //we can't do this cause the tuple stuff
    /*
    var TuplStuffSwift: some View{
     Text("Draco dormiens")
     Text("nunquan titillandus")
    }*/
    
    //or variable
    let motto2 = Text("nunquan titillandus")
    
    var body: some View {
        VStack{
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

#Preview {
    ViewsAsProperties()
}
