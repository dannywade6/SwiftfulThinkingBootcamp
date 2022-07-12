 //
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 24/06/2022.
//

import SwiftUI

struct TabViewBootcamp: View {

    @State var selectedTab: Int = 0

    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]

    var body: some View {

        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(40)
            }
        }
        .background(RadialGradient(
            colors: [Color.red, Color.blue],
            center: .center,
            startRadius: 5, endRadius: 300)

        )
        .frame(height: 300)
        .tabViewStyle(.page)


//        TabView(selection: $selectedTab) {
//
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//        }
//        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                .foregroundColor(.white)

                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .cornerRadius(10)
                }
            }

        }
    }
}
