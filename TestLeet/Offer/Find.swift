//
//  Find.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/12.
//  Copyright © 2020 KK. All rights reserved.
//

import Foundation
/*
 二维数组，行列是递增的数字，查找一个数字
 */
class Find: NSObject {
    override init() {
        super.init()
        let nums = [
        [2, 5, 11, 18, 22],
        [3, 8, 15, 22, 27],
        [7, 14, 21, 26, 28],
        [13, 19, 26, 28, 31],
        [19, 25, 27, 28, 32],
        ]
        
        let row = nums.count
        let clum = nums.first?.count ?? 0
        print(find(nums, row: row, clum: clum, element: 16))
        
    }
    
    func find(_ nums:[[Int]], row:Int, clum:Int, element:Int) -> Bool {
        var isFound = false
        
        if !nums.isEmpty, row > 0, clum > 0 {
            var r = 0
            var c = clum - 1
            // 从第一行最后一列，即右上角开始查
            while r < row, c > 0 {
                if nums[r][c] == element {
                    isFound = true
                    break
                }
                // 若大于element, 则找同行的前一位
                else if nums[r][c] > element {
                    c -= 1
                } else {
                    r += 1
                }
            }
            
        }
        
        return isFound
    }
}
