//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 14/06/2022.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {

    @State var backgroundColor:Color = Color.pink

    var body: some View {
        ZStack {
            // Background
            backgroundColor.ignoresSafeArea()

            // Content
            contentLayer

        }
    }

    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)

            Button {
                buttonPressed()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }

    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
