//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 14/06/2022.
//

import SwiftUI

struct BindingBootcamp: View {

    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"

    var body: some View {
        ZStack {
            // Background
            backgroundColor.ignoresSafeArea()

            VStack {
                Text(title)
                    .foregroundColor(.white)

                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }

        }

    }
}

struct ButtonView: View {

    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String

    var body: some View {
        Button {
            backgroundColor = .orange
            buttonColor = Color.pink
            title = "New Title"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }

    struct BindingBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            BindingBootcamp()
        }
    }
}
