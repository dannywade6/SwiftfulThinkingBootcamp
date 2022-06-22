//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 22/06/2022.
//

import SwiftUI

struct TextFieldBootcamp: View {

    @State var textFieldText: String = ""
    @State var dataArray: [String] = []

    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something Here...", text: $textFieldText)
        //            .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                .font(.headline)

                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                }) {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())

                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp!")
        }
    }

    func textIsAppropriate() -> Bool {
        // check text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }

    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
