//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 15/09/2022.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            
            Button {
                
            } label: {
                Text("Button Title")
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)

         
            Button("Buton Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Buton Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            
            Button("Buton Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Buton Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .font(.headline)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
//            .buttonStyle(.borderless)
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
            .preferredColorScheme(.dark)
    }
}
