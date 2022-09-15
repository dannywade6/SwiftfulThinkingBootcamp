//
//  AsyncImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Danny Wade on 13/09/2022.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case.empty:
                ProgressView()
            case.success(let returnedImage):
                returnedImage
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .cornerRadius(20)
            case.failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)                
            }
        }
        
        
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .frame(width: 100, height: 100)
        //                .scaledToFit()
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            ProgressView()
        //        })
        
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
