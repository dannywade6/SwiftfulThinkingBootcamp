//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 15/06/2022.
//

import SwiftUI

struct TernaryBootcamp: View {

    @State var isStartingState: Bool = false

    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }

            Text(isStartingState ? "Starting State." : "Ending State.")

            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50
                )


            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
