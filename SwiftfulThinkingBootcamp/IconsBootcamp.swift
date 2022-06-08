//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 08/06/2022.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "sterlingsign.square.fill")
//        Image(systemName: "logo.playstation")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .font(.largeTitle)
//            .font(.system(size: 200))
//            .foregroundColor(.pink)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
