//
//  Tile.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
import SwiftUI
private let bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.height - UIScreen.main.bounds.height/4.5)
public class Tile{
    var mesh: String = "EmptyTile"
    var collapsed = false
    var x: Int
    var y: Int
    var possiblePrototypes: [String] = []
    //var neighbours: [Tile] = []
    var rotation: Int
    var entropy: Int = 0
    
    //sockets
    //0 = north
    //1 = south
    //2 = east
    //3 = west
    
    
    init(x: Int , y: Int, rotation: Int, mesh: String){
        self.x = x
        self.y = y
        self.rotation = rotation
        self.mesh = mesh
        self.fillPrototypes()
        self.entropy = possiblePrototypes.count-1
        // print(possibleRotations)
       //print(possiblePrototypes)
       
    }
    func fillPrototypes(){
        for i in socketInfo{
            possiblePrototypes.append(i.key)
        }
        
    }
    func collapse(){
        let r = Int.random(in: 0...self.possiblePrototypes.count-1)
        let prototype = self.possiblePrototypes[r]
        setTileData(prototype)
        self.collapsed = true
    }
    
    func setTileData(_ prototype: String){
        let tile = socketInfo[prototype]!
        self.mesh = tile[0]["mesh"]! as! String
        self.rotation = tile[1]["rotation"] as! Int
    }
    
    
    func constrain(_ prototype: String, _ rotation: Int){
        if(entropy != 0){
            for i in 0...possiblePrototypes.count-1{
                if prototype == possiblePrototypes[i]{
                    possiblePrototypes.remove(at: i)
                    
                    entropy -= 1
                }
            }
        }
    }
}
