//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 08/06/2022.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.blue, Color("CustomColor")]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.blue, Color("CustomColor")]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    colors: [Color.blue, Color("CustomColor")],
                    center: .topLeading,
                    angle: .degrees(180 + 45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
