//
//  ForEachLoopViews.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 06/12/23.
//

import SwiftUI

struct ForEachLoopViews: View {
    var body: some View{
        Form{
            Section{
                // For every number from 0 to 99 do: )
                ForEach(0..<100) { number in
                    Text("Number \(number)")
                }
            }
            
            //using ShortHand Synntax:
            Section{
                ForEach(0..<100) {
                    Text("More section number \($0)")
                }
            }
        }
    }
}

#Preview {
    ForEachLoopViews()
}
