//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 12/06/2022.
//

import SwiftUI

struct GridBootcamp: View {

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    var body: some View {
        ScrollView {

            Rectangle()
                .fill(.orange)
                .frame(height: 400)

            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {

                Section {
                    ForEach(0..<21) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }

                Section {
                    ForEach(0..<21) { index in
                            Rectangle()
                            .fill(.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }


            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
