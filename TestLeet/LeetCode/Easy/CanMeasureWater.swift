//
//  CanMeasureWater.swift
//  TestLeet
//
//  Created by zhangkk on 2020/3/21.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 有两个容量分别为 x升 和 y升 的水壶以及无限多的水。请判断能否通过使用这两个水壶，从而可以得到恰好 z升 的水？

 如果可以，最后请用以上水壶中的一或两个来盛放取得的 z升 水。

 你允许：

 装满任意一个水壶
 清空任意一个水壶
 从一个水壶向另外一个水壶倒水，直到装满或者倒空
 示例 1: (From the famous "Die Hard" example)

 输入: x = 3, y = 5, z = 4
 输出: True
 示例 2:

 输入: x = 2, y = 6, z = 5
 输出: False
 链接：https://leetcode-cn.com/problems/water-and-jug-problem/
 */
class CanMeasureWater: NSObject {
    func canMeasureWater(_ x: Int, _ y: Int, _ z: Int) -> Bool {
        if x == z || y == z {
            return true
        }
        let big = x>y ? x : y
        let small = x>y ? y : x
        
        var diff1 = big - small
        var diff2 = big - diff1
        var diff3 = abs(small - diff2)
        var diff4 = big - diff2;
        var diff5 = abs(small - diff3);
    
        
        var set = Set<Int>()
        set.insert(diff1)
        set.insert(diff3)
        set.insert(diff3)
        
        return false
        
    }
}
    
