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
    }
    
    func genEmptyMaze(){
        for i in 0...vSize-1{
            for j in 0...size-1{
                if (i == 0 && j == 0) || (i == vSize-1 && j == size-1) {
                    let t = Tile(x: j, y: i, rotation: 0, mesh: "Straight")
                    t.collapsed = true
                    self.maze.append(t)
                    
                }
                else{
                    self.maze.append(Tile(x: j, y: i, rotation: 0, mesh: "EmptyTile"))
                }
                
            }
        }
    }
    
    func isCollapsed()-> Bool{
        for i in maze{
            if i.collapsed == false{
                return false
            }
        }
        return true
    }
    func getLowestEntropyTile() -> Tile {
        var entropy = 100
        var tile: Tile? = nil
        for i in maze{
            if i.entropy < entropy && i.collapsed == false {
                entropy = i.entropy
                tile = i
                
            }
        }
        return tile!
    }
    
    func genRandMaze(){
        
    }
    func waveGen(){
        
    }
}
