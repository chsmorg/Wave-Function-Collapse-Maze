//
//  Intersection4.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct Intersection4: View {
    var size: CGFloat = 0
    var body: some View {
        ZStack{
            Rectangle().frame(width: size, height: size).foregroundColor(.black)
            
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
            
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: +size/4)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: -size/4)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: +size/4)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: -size/4)
        }
    }
}

//struct Intersection4_Previews: PreviewProvider {
//    static var previews: some View {
//        Intersection4()
//    }
//}
