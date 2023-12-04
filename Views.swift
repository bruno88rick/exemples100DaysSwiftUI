//
//  Views.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 04/12/23.
//

import SwiftUI

struct Views: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello World!")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}

#Preview {
    Views()
}
