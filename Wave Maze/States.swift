//
//  States.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
import SwiftUI
import AVFoundation

class States: ObservableObject {
    @Published var bounds: CGRect
    @Published var size: Int
    @Published var tileSize: CGFloat
    @Published var vSize: Int
    @Published var maze: [Tile] = []
    
    init(size: Int, bounds: CGRect){
        self.size = size
        self.bounds = bounds
        self.vSize = Int(bounds.height/(bounds.width/CGFloat(size)))
        self.tileSize = bounds.width/CGFloat(size)
        genEmptyMaze()
        print(maze)
    }
    
    func genEmptyMaze(){
        for i in 0...vSize-1{
            for j in 0...size-1{
                if (i == 0 && j == 0) || (i == vSize-1 && j == size-1) {
                    self.maze.append(Tile(x: j, y: i, rotation: 0, mesh: "Straight"))
                }
                else{
                    self.maze.append(Tile(x: j, y: i, rotation: 0, mesh: "EmptyTile"))
                }
                
            }
        }
    }
    
    func genRandMaze(){
        
    }
    func waveGen(){
        
    }
}
