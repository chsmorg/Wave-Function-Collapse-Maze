//
//  States.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
import SwiftUI
import AVFoundation

private let faces = ["n","s","e","w"]

class States: ObservableObject {
    @Published var bounds: CGRect
    @Published var size: Int
    @Published var tileSize: CGFloat
    @Published var vSize: Int
    @Published var maze: [Tile] = []
    @Published var stack: [Tile] = []
    @Published var path: [Tile] = []
    
    init(size: Int, bounds: CGRect){
        self.size = size
        self.bounds = bounds
        self.vSize = Int(bounds.height/(bounds.width/CGFloat(size)))
        self.tileSize = bounds.width/CGFloat(size)
        genEmptyMaze()
        waveGen()
    }
    // sets corner and edge tiles 
    func genEmptyMaze(){
        for i in 0...vSize-1{
            for j in 0...size-1{
                let t = Tile(x: j, y: i, prototype: "e")
                if (i == 0 && j == 0) || (i == vSize-1 && j == size-1) {
                    t.possiblePrototypes = ["s0"]
                    t.entropy = 1
                  }
                else if i == vSize-1 && j == 0{
                    t.possiblePrototypes = ["c2", "d2","d1"]
                    t.entropy = 1
                }
                else if i == 0 && j == size-1{
                    t.possiblePrototypes = ["c1","d0","d3"]
                    t.entropy = 1
                }
                else{
                    
                    if i == 0 {
                        t.possiblePrototypes = ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]
                        t.entropy = t.possiblePrototypes.count
                    }
                    if j == 0{
                        t.possiblePrototypes = ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]
                        t.entropy = t.possiblePrototypes.count
                    }
                    if i == vSize-1{
                        t.possiblePrototypes = ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]
                        t.entropy = t.possiblePrototypes.count
                    }
                    if j == size-1{
                        t.possiblePrototypes = ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]
                        t.entropy = t.possiblePrototypes.count
                    }
                    
                    
                }
                self.maze.append(t)
               
            }
        }
    }
    
    func iterate(){
        let tile = getLowestEntropyTile()
        tile.collapse()
        path.append(tile)
        propagate(tile)
    }
    func propagate(_ tile: Tile){
        stack.append(tile)
        
        while stack.count > 0{
            let curTile = stack.popLast()
            var face = 0
            for next in dirs(curTile!){
                if next == nil {
                    face += 1
                    continue
                }
                let nextPossibleProtos = next!.possiblePrototypes
                let curPossibleNeighbours = getNeighboursList(curTile!, face)
                 
                
                if nextPossibleProtos.count == 0{
                    face += 1
                    continue
                }
                for prototype in nextPossibleProtos{
                    if !curPossibleNeighbours.contains(prototype){
                        next!.constrain(prototype)
                        if !stack.contains(next!) {
                               stack.append(next!)
                           }
                    
                    }
                    
                }
                face += 1
            }
            
        }
    }
    
    func getNeighboursList(_ tile: Tile, _ d: Int) -> [String]{
        if d == 0{
           return tile.possibleNeighbours[0]["n"]!
        }
        if d == 1{
            return tile.possibleNeighbours[1]["s"]!
        }
        if d == 2{
            return tile.possibleNeighbours[2]["e"]!
        }
        if d == 3 {
            return tile.possibleNeighbours[3]["w"]!
        }
        return []
    }
    
    func dirs(_ tile: Tile)-> [Tile?]{
        var tiles: [Tile?] = []
        
        var t = findTile(tile.x, tile.y-1)
        tiles.append(t)
        
        t = findTile(tile.x, tile.y+1)
        tiles.append(t)
        
        t = findTile(tile.x+1, tile.y)
        tiles.append(t)
        
        t = findTile(tile.x-1, tile.y)
        tiles.append(t)
        
        return tiles
    }
    
    func findTile(_ x: Int, _ y: Int)-> Tile?{
        for i in maze{
            if i.x == x && i.y == y && i.collapsed == false{
                return i
            }
        }
        return nil
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
        var tiles: [Tile] = []
        
        for i in maze{
            if i.entropy < entropy && !i.collapsed{
                entropy = i.entropy
                
            }
        }
        for i in maze{
            if i.entropy == entropy && !i.collapsed{
                tiles.append(i)
            }
        }
        return tiles[Int.random(in: 0...tiles.count-1)]
    }
    
    func genRandMaze(){
        
    }
    func waveGen(){
        while !isCollapsed(){
            iterate()
        }
        
    }
}
