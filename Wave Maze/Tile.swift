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
    var x: Int
    var y: Int
    var possiblePrototypes: [String] = ["Straight","DeadEnd","Corner","Intersection3","Intersection4"]
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
        self.entropy = possiblePrototypes.count-1
        print(sockets)
       
    }
    func fillSockets(){
        print(mesh)
        sockets = (socketInfo[mesh]?[rotation]) as! [Int]
        
    }
    func constrain(_ prototype: String){
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
