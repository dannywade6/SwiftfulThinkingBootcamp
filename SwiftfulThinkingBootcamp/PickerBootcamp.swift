//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 22/06/2022.
//

import SwiftUI

struct PickerBootcamp: View {

    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]

    var body: some View {

        Picker(
            selection: $selection,
            label:
                HStack {
                    Text("Filter")
                    Text(selection)
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.3), radius: 10, x: 0, y: 10)

            ,
            content: {
                ForEach(filterOptions, id: \.self) { option in
                    HStack {
                        Text(option)
                        Image(systemName: "heart.fill")
                            .tag(option)
                    }
                }
            })
        .pickerStyle(.menu)




        //        VStack {
        //
        //            HStack {
        //                Text("Age: ")
        //                Text(selection)
        //            }
        //            Picker(selection: $selection) {
        //                ForEach(18..<100) { number in
        //                    Text("\(number)")
        //                        .tag("\(number)")
        //                }
        //
        //            } label: {
        //                Text("Picker")
        //            }
        //            .pickerStyle()
        //        }
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
