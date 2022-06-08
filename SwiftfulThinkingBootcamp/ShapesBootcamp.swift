//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 08/06/2022.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 50)
//            .fill(Color.blue)
//            .stroke()
//            .stroke(Color.blue)
//            .stroke(Color.green, lineWidth: 20)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50.0)
            .frame(width: 300, height: 200)
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
