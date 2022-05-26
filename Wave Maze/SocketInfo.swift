//
//  SocketInfo.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
//rotation 0 1 2 3
//paths n s e w

var socketInfo = [
    "Straight": [[1,1,0,0],[0,0,1,1]],
    "EmptyTile": [[-1,-1,-1,-1]],
    "DeadEnd": [[0,1,0,0],[0,0,1,0],[1,0,0,0],[0,0,0,1]],
    "Corner": [[0,1,1,0],[0,1,0,1],[1,0,1,0],[1,0,0,1]],
    "Intersection3": [[1,1,0,1],[0,1,1,1],[1,1,1,0],[1,0,1,1]],
    "Intersection4": [[1,1,1,1]]
]
