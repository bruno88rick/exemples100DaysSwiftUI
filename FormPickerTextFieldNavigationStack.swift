import SwiftUI

struct FormPickerTextFieldNavigationStack: View {
    let students = ["Harry", "Hermioni", "Ron"]
    
    //PROPERTIES WRAPPER @STATE
    @State private var tapCount = 0
    @State private var name = ""
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        
        //NAVIGATION STACK
        NavigationStack{
            
            //FORMS
            Form {
                //SRCTION FORMS
                Section {
                    //TEXT
                    Text("Hello World!")
                }
                Section{
                    
                    Text("Hello World!")
                }
            }
            
            //PICKER
            Picker("Select your Student", selection: $selectedStudent) {
                //FOR EACH
                ForEach(students, id: \.self) {
                    Text($0)
                }
            }
            
            ///TEXT FIELD
            /////Two Way Bidding with $, signalizing that the text field will read and write the name variable
            TextField("Enter yout name Here", text:$name)
            // Without $, signalizing that the text view sill just read the value of the name variable
            Text("Your Name is \(name)")
            //BUTTONS
            Button("Tap Count: \(tapCount)") {
                tapCount += 1
            }
            //NAVIGATION STACK MODIFIERS
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

//SWIFT PREVIEW
 #Preview {
     FormPickerTextFieldNavigationStack()
 }

