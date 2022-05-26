//
//  Maze.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI

struct MazeView: View {
    private let bounds = UIScreen.main.bounds
    @State var showMaze = true
    //var test = Tile(x: 0, y: 0, rotation: 0, mesh: "Straight")
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 20).frame(width: bounds.width-40, height: bounds.height-bounds.height/4.5).foregroundColor(.white).padding()
                if showMaze{
                    GridView()
                }
                
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 20).stroke(.secondary, style: StrokeStyle(lineWidth: 4)).shadow(radius: 20).padding(.horizontal)
                Button(action: {
                    showMaze.toggle()
                    showMaze.toggle()
                }, label: {
                    Text("Press")
                })
            }
            
        }.background(.quaternary)
        
    }
}

//struct Maze_Previews: PreviewProvider {
//    static var previews: some View {
//        MazeView()
//    }
//}
