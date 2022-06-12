//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 12/06/2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {

        ScrollView {
            VStack {
                Text("Title Goes Here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)

                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea()
        )


//        ZStack {
//
//            // Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            // Foreground
//            VStack {
//                Text("Hello, World!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
////            .background(Color.red)
//        }

    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
