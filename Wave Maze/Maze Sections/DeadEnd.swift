//
//  DeadEnd.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct DeadEnd: View {
    var size: CGFloat = 50
    var pos: Int = 0
    var body: some View {
        ZStack{
            Rectangle().frame(width: size, height: size).foregroundColor(.black)
            if pos == 0{
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: +size/4)
            }
            if pos == 1{
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: +size/4)
            }
            if pos == 2{
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: -size/4)
            }
            if pos == 3{
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: -size/4)
            }
            
        }

    }
}

//struct DeadEnd_Previews: PreviewProvider {
//    static var previews: some View {
//        DeadEnd()
//    }
//}
