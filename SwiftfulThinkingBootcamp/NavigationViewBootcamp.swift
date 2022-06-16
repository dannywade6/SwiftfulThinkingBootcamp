//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 16/06/2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {

                NavigationLink("Hello, world!") {
                    MyOtherScreen()
                }
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing:
                    NavigationLink(
                    destination: {
                    MyOtherScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                    .accentColor(.red)
            )

        }
    }
}

struct MyOtherScreen: View {

    @Environment (\.presentationMode) var presentationMode

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)

            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here") {
                    Text("Third Screen")
                }
            }
        }
    }
}

struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
