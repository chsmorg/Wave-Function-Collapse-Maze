//
//  PathView.swift
//  Wave Maze
//
//  Created by chase morgan on 5/26/22.
//


import SwiftUI
private let bounds = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-40, height: UIScreen.main.bounds.height - UIScreen.main.bounds.height/4.5)


struct PathView: View {
    @ObservedObject var states = States(size: 8, bounds: bounds)
    let timer =  Timer.publish(every: 0.005, on: .main, in: .common).autoconnect()
    @State var s: CGFloat = 0
    @State var animate = false
    @State var count = 0

    
    var body: some View {
        ZStack{
            Text(String(states.vSize)).onReceive(self.timer){ _ in
                if count < states.path.count-1{
                    count += 1
                    if animate{
                        s = 0
                    }
                }
                
            }
            
            ForEach(0...count, id: \.self) { index in
                
               let tile = states.path[index]
               if tile.mesh == "Straight"{
                   Straight(size: s, pos: tile.rotation).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                    withAnimation(.spring()){
                        if count == index{
                        
                        }
                        
                    }
                   }.onTapGesture{
                       
                   }
              }
              if tile.mesh == "EmptyTile"{
                    EmptyTile(size: states.tileSize).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                        withAnimation(.spring()){
                            if !tile.animated{
                                self.s = states.tileSize
                                tile.animated = true
                            }
                        }
                    }
                }
                if tile.mesh == "DeadEnd"{
                 DeadEnd(size: s, pos: tile.rotation).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         if !tile.animated{
                             self.s = states.tileSize
                             tile.animated = true
                         }
                     }
                 }
               }
              if tile.mesh == "Corner"{
                 Corner(size: s, pos: tile.rotation).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         if !tile.animated{
                             self.s = states.tileSize
                             tile.animated = true
                         }
                     }
                 }
               }
                if tile.mesh == "Intersection3"{
                 Intersection3(size: s, pos: tile.rotation).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         if !tile.animated{
                             self.s = states.tileSize
                             tile.animated = true
                         }
                     }
                 }
               }
               if tile.mesh == "Intersection4"{
                 Intersection4(size: s).offset(x: (-bounds.width/2) + (states.tileSize/2) + (CGFloat(tile.x)*states.tileSize), y: (-bounds.height/2) + (states.tileSize/2) + (CGFloat(tile.y)*states.tileSize)).onAppear(){
                     withAnimation(.spring()){
                         if !tile.animated{
                             self.s = states.tileSize
                             tile.animated = true
                         }
                     }
                 }
               }
                
                
            }
        }
    }
    
    func ran()-> Int{
        return Int.random(in: 0...1)
    }
}


//struct GridView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridView()
//    }
//}
