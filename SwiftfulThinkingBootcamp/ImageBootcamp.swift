//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 08/06/2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("tigerwoods")
        Image("google")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.red)
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(
////                Circle()
////                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//            )
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
