//
//  Intersection3.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct Intersection3: View {
        var size: CGFloat = 50
        var pos: Int = 2
        var body: some View {
            ZStack{
                Rectangle().frame(width: size, height: size).foregroundColor(.black)
                if pos == 1{
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: +size/4)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: +size/4)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: -size/4)
                }
                if pos == 3{
                    //y
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: -size/4)
                    
                    //x
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: +size/4)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: -size/4)
                }
                if pos == 2{
                    
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                    
                    //y
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: +size/4)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: -size/4)
                    
                    //x
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: +size/4)
                    
                }
                if pos == 0{
                    
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white)
                    
                    //y
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: +size/4)
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(y: -size/4)
                    
                    //x
                    Rectangle().frame(width: size/2, height: size/2).foregroundColor(.white).offset(x: -size/4)
                    
                }
                
            }
            
        }
    }


struct Intersection3_Previews: PreviewProvider {
    static var previews: some View {
        Intersection3()
    }
}
