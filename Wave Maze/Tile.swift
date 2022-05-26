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
    var possibleRotations: [Int] = []
    var neighbours: [Tile] = []
    var rotation: Int
    var entropy: Int = 0
    
    //sockets
    //0 = north
    //1 = south
    //2 = east
    //3 = west
    var sockets: [Int] = []
    
    
    init(x: Int , y: Int, rotation: Int, mesh: String){
        self.x = x
        self.y = y
        self.rotation = rotation
        self.mesh = mesh
        self.fillSockets()
        self.fillPrototypes()
        self.entropy = possiblePrototypes.count-1
        // print(possibleRotations)
       //print(possiblePrototypes)
       
    }
    func fillPrototypes(){
        for i in socketInfo{
            for j in 0...i.value.count-1{
               possiblePrototypes.append(i.key)
               possibleRotations.append(j)
            }
        }
        
    }
    func fillSockets(){
        print(mesh)
        sockets = (socketInfo[mesh]?[rotation])!
        
    }
    func collapse(){
        let r = Int.random(in: 0...self.possiblePrototypes.count-1)
        self.mesh = self.possiblePrototypes[r]
        self.rotation = self.possibleRotations[r]
        self.collapsed = true
        self.fillSockets()
    }
    func constrain(_ prototype: String, _ rotation: Int){
        if(entropy != 0){
            for i in 0...possiblePrototypes.count-1{
                if prototype == possiblePrototypes[i] && rotation == possibleRotations[i]{
                    possiblePrototypes.remove(at: i)
                    possibleRotations.remove(at: i)
                    entropy -= 1
                }
            }
        }
    }
}
