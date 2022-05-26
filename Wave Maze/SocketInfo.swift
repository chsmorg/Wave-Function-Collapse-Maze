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
            
        ]]
    ],
    "s1" : [
        ["mesh" : " Straight "],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
            
        ]]
    ],
    "i4" : [
        ["mesh" : " Intersection4 "],
        ["rotation": 0 ],
        ["n": 1 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
     "e" : [
        ["mesh" : " EmptyTile "],
        ["rotation": 0 ],
        ["n": -1 ],
        ["s": -1 ],
        ["e": -1 ],
        ["w": -1 ],
        ["neighbours":[
        ]]
    ],
    "i0" : [
        ["mesh" : " Intersection3 "],
        ["rotation": 0 ],
        ["n": 1 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
     "i1" : [
        ["mesh" : " Intersection3 "],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
    "i2" : [
        ["mesh" : " Intersection3 "],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
    "i3" : [
        ["mesh" : " Intersection3 "],
        ["rotation": 3 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
    "d0" : [
        ["mesh" : " DeadEnd "],
        ["rotation": 0 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
     "d1" : [
        ["mesh" : " DeadEnd "],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
     "d2" : [
        ["mesh" : " DeadEnd "],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
    "d3" : [
        ["mesh" : " DeadEnd "],
        ["rotation": 3 ],
        ["n": 0 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
     "c0" : [
        ["mesh" : " Corner "],
        ["rotation": 0 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
     "c1" : [
        ["mesh" : " Corner "],
        ["rotation": 1 ],
        ["n": 0 ],
        ["s": 1 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ],
     "c2" : [
        ["mesh" : " Corner "],
        ["rotation": 2 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 1 ],
        ["w": 0 ],
        ["neighbours":[
        ]]
    ],
     "c3" : [
        ["mesh" : " Corner "],
        ["rotation": 3 ],
        ["n": 1 ],
        ["s": 0 ],
        ["e": 0 ],
        ["w": 1 ],
        ["neighbours":[
        ]]
    ]
]
