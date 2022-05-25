//
//  Straight.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct Straight: View {
    let type = "Straight"
    var size: CGFloat = 0
    var pos: Int = 0
    var body: some View {
        ZStack{
            Rectangle().frame(width: size, height: size).foregroundColor(.black)
            if pos == 0{
                Rectangle().frame(width: size/2, height: size).foregroundColor(.white)
            }
            if pos == 1{
                Rectangle().frame(width: size, height: size/2).foregroundColor(.white)
            }
            
        }
        
    }
}

//struct Straight_Previews: PreviewProvider {
//    static var previews: some View {
//        Straight()
//    }
//}

