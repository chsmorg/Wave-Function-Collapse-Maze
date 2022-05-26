//
//  GridView.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import SwiftUI
private let bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.height - UIScreen.main.bounds.height/4.5)


struct GridView: View {
    var vSize = Int(bounds.height/(bounds.width/12))
    @ObservedObject var states = States(size: 2, bounds: bounds)
    @State var s: CGFloat = 0
    var body: some View {
        ZStack{
            Text(String(vSize))
            ForEach(0...states.maze.count-1, id: \.self) { index in
                let tile = states.maze[index]
               if tile.mesh == "Straight"{
                Straight(size: s, pos: ran()).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                    withAnimation(.spring()){
                        self.s = states.tileSize
                    }
                }
              }
              else if states.maze[index].mesh == "EmptyTile"{
                    EmptyTile(size: states.tileSize).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                        withAnimation(.spring()){
                            self.s = states.tileSize
                        }
                    }
                }
                else if tile.mesh == "DeadEnd"{
                 DeadEnd(size: s, pos: ran()).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         self.s = states.tileSize
                     }
                 }
               }
              else if tile.mesh == "Corner"{
                 Corner(size: s, pos: ran()).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         self.s = states.tileSize
                     }
                 }
               }
                if tile.mesh == "Intersection3"{
                 Intersection3(size: s, pos: ran()).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         self.s = states.tileSize
                     }
                 }
               }
               else if tile.mesh == "Intersection4"{
                 Intersection4(size: s).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         self.s = states.tileSize
                     }
                 }
               }
                
                
            }
        }
    }
    
    func ran()-> Int{
        return Int.random(in: 0...1)
    }
}


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
