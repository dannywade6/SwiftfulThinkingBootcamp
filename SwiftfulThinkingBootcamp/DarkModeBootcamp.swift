//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 12/07/2022.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("This colour is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This colour is SECONDARY")
                        .foregroundColor(.accentColor)
                    
                    Text("This colour is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This colour is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This colour is RED")
                        .foregroundColor(.red)
                    
                    Text("This colour is globally adaptive!")
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This colour is locally adaptive!")
                        .foregroundColor(colorScheme == .light ? .green : .pink)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
        
            
    }
}
