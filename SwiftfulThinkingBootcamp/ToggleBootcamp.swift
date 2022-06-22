//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 22/06/2022.
//

import SwiftUI

struct ToggleBootcamp: View {

    @State var toggleIsOn: Bool = false

    var body: some View {
        VStack {

            HStack {
                Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)


            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change Status")
                }
            .toggleStyle(SwitchToggleStyle(tint: .red))

            Spacer()

        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
