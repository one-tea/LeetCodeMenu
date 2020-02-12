//
//  ClockwisePrintingMatrix.swift
//  TestLeet
//
//  Created by zhangkk on 2019/10/21.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit
/*顺时针打印矩阵：
 输入一个矩阵，按照从外向内已顺时针依次打印出每一个数字，例如
 1  2  3  4
 5  6  7  8
 9  10 11 12
 13 14 15 16
 */
class ClockwisePrintingMatrix: NSObject {
    
    func printMatrixInCircle(_ nums:[[Int]], _ rows:Int, _ cloums:Int, _ start:Int) {
        
        let endX = cloums-start
        let endY = rows-start
        
        // 从左到右
        for i in start..<endX {
            let num = nums[start][i]
            print(num)
        }
        // 从上到下
        for i in start+1..<endY {
            let num = nums[i][endY]
            print(num)
        }
        // 从左到右
        for i in endX-1..<start {
            let num = nums[endY][i]
            print(num)
        }
        // 从上到下
        for i in endY-1..<start+1 {
            let num = nums[start][i]
            print(num)
        }
        
    }
    
    func printingMartrix(_ martrix:[[Int]]?, _ rows:Int, _ cloums:Int) {
        guard let nums = martrix, rows > 0, cloums > 0 else {
            return
        }
        var start = 0
        while (rows > start*2 && cloums > start*2) {
            printMatrixInCircle(nums, rows, cloums, start)
            start += 1
        }
    }
    

    
    
}
