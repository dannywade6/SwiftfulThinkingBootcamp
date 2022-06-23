//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 23/06/2022.
//

import SwiftUI

struct SliderBootcamp: View {

    @State var sliderValue: Double = 3

    @State var color: Color = .red

    var body: some View {
        VStack {
            Text("Rating:")
//            Text("\(sliderValue)")
            Text(
                String(format: "%.0f", sliderValue)

            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...5)
//            Slider(value: $sliderValue, in: 1...5, step: 1.0)

            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1"),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
                .accentColor(.orange)
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
