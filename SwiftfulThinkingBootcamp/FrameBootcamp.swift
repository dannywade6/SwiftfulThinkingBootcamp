//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 08/06/2022.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text("Hello, World!")
//            .background(Color.green)
////            .frame(width: 300, height: 300, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//            .background(Color.red)
        
        Text("Hello World!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
