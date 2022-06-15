//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 15/06/2022.
//

import SwiftUI

struct SheetsBootcamp: View {

    @State var showSheet: Bool = false

    var body: some View {
        ZStack {
            // Background
            Color.green
                .ignoresSafeArea()

            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }

            .fullScreenCover(isPresented: $showSheet) {
//            DO NOT ADD CONDITIONAL LOGIC
                SecondScreen()
            }



//            .sheet(isPresented: $showSheet) {
//            DO NOT ADD CONDITIONAL LOGIC
//                SecondScreen()
//            }

        }
    }
}

struct SecondScreen : View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()

            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Text(Image(systemName: "xmark"))
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }

    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
