//
//  EmptyTile.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct EmptyTile: View {
    var size: CGFloat = 0
    var body: some View {
        ZStack{
            Rectangle().frame(width: size, height: size).foregroundColor(.clear)
        }
        
    }
}

