//
//  GameOfLife.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/2.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class GameOfLife: NSObject {
    override init() {
        super.init()
        var board = [
          [0,1,0],
          [0,0,1],
          [1,1,1],
          [0,0,0]
        ]
        gameOfLife(&board)
        print(board)
    }
    
    func gameOfLife(_ board: inout [[Int]]) {
        var arr = board
        for i in 0..<board.count {
            for j in 0..<board[i].count {
                let aroundLiveNums = indexAround(i, j, board);
                if board[i][j] > 0 {
                    if aroundLiveNums < 2 || aroundLiveNums > 3{
                        arr[i][j] = 0
                    } else {
                        arr[i][j] = 1
                    }
                } else {
                    if aroundLiveNums == 3 {
                        arr[i][j] = 1
                    } else {
                        arr[i][j] = 0
                    }
                }
            }
        }
        board = arr
    }
    
    func indexAround(_ i:Int, _ j:Int, _ board:[[Int]]) -> Int {
        var aroundLiveNums:Int = 0
        
        for a in -1...1 {
            for b in -1...1 {
                if  i+a >= 0, i+a < board.count, j+b >= 0, j+b < board[i+a].count{
                    if a == 0 , b == 0 {
                        continue
                    }
                    let num = board[i+a][j+b]
                    aroundLiveNums += num
                }
            }
        }
        return aroundLiveNums
    }
}
