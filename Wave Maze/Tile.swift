//
//  Tile.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
import SwiftUI
private let bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.height - UIScreen.main.bounds.height/4.5)
public class Tile: Equatable{
    
    public static func == (lhs: Tile, rhs: Tile) -> Bool {
        if lhs.x == rhs.x && lhs.y == rhs.y{ return true}
        return false
    }
    
    var mesh: String = "EmptyTile"
    var collapsed = false
    var animated = false
    var x: Int
    var y: Int
    var possiblePrototypes: [String] = []
    var possibleNeighbours: [[String: [String]]] = []
    //var neighbours: [Tile] = []
    var rotation: Int = 0
    var entropy: Int = 0
    
    //sockets
    //0 = north
    //1 = south
    //2 = east
    //3 = west
    
    
    init(x: Int , y: Int, prototype: String){
        self.x = x
        self.y = y
        self.setTileData(prototype)
        self.fillPrototypes()
        self.entropy = possiblePrototypes.count
       
    }
    func fillPrototypes(){
        for i in socketInfo{
            possiblePrototypes.append(i.key)
        }
        
    }
    func collapse(){
        if self.possiblePrototypes.count != 0{
            let r = Int.random(in: 0...self.possiblePrototypes.count-1)
            let prototype = self.possiblePrototypes[r]
            self.setTileData(prototype)
            self.collapsed = true
        }
        else{
            self.setTileData("e")
            self.collapsed = true
        }
        
    }
    
    func setTileData(_ prototype: String){
        let tile = socketInfo[prototype]!
        self.mesh = tile[0]["mesh"]! as! String
        self.rotation = tile[1]["rotation"] as! Int
        self.possibleNeighbours = tile[6]["neighbours"] as! [[String: [String]]]
    }
    
    
    func constrain(_ prototype: String){
        
            for i in 0...possiblePrototypes.count-1{
                if prototype == possiblePrototypes[i]{
                    possiblePrototypes.remove(at: i)
                    entropy -= 1
                    break
                }
            }
    }
}
