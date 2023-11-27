import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermioni", "Ron"]
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    Text("Hello World!")
                }
                Section{
                    
                    Text("Hello World!")
                }
            }
            
            Picker("Select your Student", selection: $selectedStudent) {
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
            
            TextField("Enter yout name Here", text:$name)
            Text("Your Name is \(name)")
            
            Button("Tap Count: \(tapCount)") {
                tapCount += 1
            }
            
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

 #Preview {
     ContentView()
 }

