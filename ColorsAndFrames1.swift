//
//  ColorsAndFrames1.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 27/11/23.
//

import SwiftUI

struct ColorsAndFrames1: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            Text("Your Content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
    }
}

#Preview {
    ColorsAndFrames1()
}
