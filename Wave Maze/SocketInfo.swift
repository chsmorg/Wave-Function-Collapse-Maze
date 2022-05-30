//
//  SocketInfo.swift
//  Wave Maze
//
//  Created by chase morgan on 5/25/22.
//

import Foundation
//rotation 0 1 2 3
//paths n s e w

var socketInfo1 = [
    "Straight": [[1,1,0,0],[0,0,1,1]],
    "EmptyTile": [[-1,-1,-1,-1]],
    "DeadEnd": [[0,1,0,0],[0,0,1,0],[1,0,0,0],[0,0,0,1]],
    "Corner": [[0,1,1,0],[0,1,0,1],[1,0,1,0],[1,0,0,1]],
    "Intersection3": [[1,1,0,1],[0,1,1,1],[1,1,1,0],[1,0,1,1]],
    "Intersection4": [[1,1,1,1]]
]

var socketInfo = [
    "s0": [
        ["mesh" : "Straight"],
        ["rotation": 0],
        ["n": 1],
        ["s": 1],
        ["e": 0],
        ["w": 0],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]  ]
        ]]
    ],
    "s1" : [
        ["mesh" : "Straight"],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"] ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ],
//    "i4" : [
//        ["mesh" : "Intersection4"],
//        ["rotation": 0 ],
//        ["n": 1 ],
//        ["s": 1 ],
//        ["e": 1 ],
//        ["w": 1 ],
//        ["neighbours":[
//            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
//            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
//            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
//            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
//        ]]
//    ],
     "e" : [
        ["mesh" : "EmptyTile"],
        ["rotation": 0 ],
        ["n": -1 ],
        ["s": -1 ],
        ["e": -1 ],
        ["w": -1 ],
        ["neighbours":[
            ["n": ["i3", "i2", "s1", "c2", "c3", "i4", "i1", "s0", "c1", "c0", "e", "i0"]],
            ["s": ["i3", "i2", "s1", "c2", "c3", "i4", "i1", "s0", "c1", "c0", "e", "i0"] ],
            ["e": ["i3", "i2", "s1", "c2", "c3", "i4", "i1", "s0", "c1", "c0", "e", "i0"]],
            ["w": ["i3", "i2", "s1", "c2", "c3", "i4", "i1", "s0", "c1", "c0", "e", "i0"] ]
        ]]
    ],
    "i0" : [
        ["mesh" : "Intersection3"],
        ["rotation": 0 ],
        ["n": 1 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ],
     "i1" : [
        ["mesh" : "Intersection3"],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ],
    "i2" : [
        ["mesh" : "Intersection3"],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"] ]
        ]]
    ],
    "i3" : [
        ["mesh" : "Intersection3"],
        ["rotation": 3 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"] ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["i4", "i1", "s1", "d1", "i2", "c0", "c2", "i3"]  ]
        ]]
    ],
    "d0" : [
        ["mesh" : "DeadEnd"],
        ["rotation": 0 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]  ]
        ]]
    ],
     "d1" : [
        ["mesh" : "DeadEnd"],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]  ]
        ]]
    ],
     "d2" : [
        ["mesh" : "DeadEnd"],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]  ]
        ]]
    ],
    "d3" : [
        ["mesh" : "DeadEnd"],
        ["rotation": 3 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ],
     "c0" : [
        ["mesh" : "Corner"],
        ["rotation": 0 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"]  ]
        ]]
    ],
     "c1" : [
        ["mesh" : "Corner"],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["d3", "d1", "i3", "d2", "c2", "c3", "s1"]  ],
            ["s": ["i0", "d2", "s0", "c3", "i2", "i4", "i3", "c2"] ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ],
     "c2" : [
        ["mesh" : "Corner"],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["s1", "c3", "c1", "i3", "d3", "i1", "i4", "i0"] ],
            ["w": ["s0", "d3", "i0", "c1", "d2", "c3", "d0"] ]
        ]]
    ],
     "c3" : [
        ["mesh" : "Corner"],
        ["rotation": 3 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
            ["n": ["s0", "i4", "d0", "i0", "c1", "i1", "i2", "c0"] ],
            ["s": ["d1", "d3", "s1", "c1", "d0", "i1", "c0"]  ],
            ["e": ["c0", "d0", "d2", "d1", "c2", "i2", "s0"]  ],
            ["w": ["i3", "i1", "c0", "d1", "s1", "i2", "i4", "c2"] ]
        ]]
    ]
]
