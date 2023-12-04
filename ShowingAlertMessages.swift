//
//  ShowingAlertMessages.swift
//  exemples100DaysSwiftUI
//
//  Created by Bruno Oliveira on 28/11/23.
//

import SwiftUI

struct ShowingAlertMessages: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        Button ("Show Alert") {
            showingAlert = true
        }
        .alert("Important Message", isPresented: $showingAlert) {
            Button("Ok") {}
        }
        .padding()
        
        Button("Show alert again") {
            showingAlert = true
        }
        .alert("An Important Message", isPresented: $showingAlert) {
            Button("ok") {}
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        }
        .padding()
        
        Button("Show Another Alert"){
            showingAlert = true
        }
        .alert("Another important Message", isPresented: $showingAlert){
            Button("ok", role: .cancel) { }
        } message: {
            Text("Read this carefully, please!")
        }
        .padding()
    }
}

#Preview {
    ShowingAlertMessages()
}
