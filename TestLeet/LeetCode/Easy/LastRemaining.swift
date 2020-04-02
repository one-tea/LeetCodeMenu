//
//  LastRemaining.swift
//  TestLeet
//
//  Created by zhangkk on 2020/3/30.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 面试题62. 圆圈中最后剩下的数字
 0,1,,n-1这n个数字排成一个圆圈，从数字0开始，每次从这个圆圈里删除第m个数字。求出这个圆圈里剩下的最后一个数字。

 例如，0、1、2、3、4这5个数字组成一个圆圈，从数字0开始每次删除第3个数字，则删除的前4个数字依次是2、0、4、1，因此最后剩下的数字是3。

 示例 1：

 输入: n = 5, m = 3
 输出: 3
 示例 2：

 输入: n = 10, m = 17
 输出: 2
  

 限制：

 1 <= n <= 10^5
 1 <= m <= 10^6
 链接：https://leetcode-cn.com/problems/yuan-quan-zhong-zui-hou-sheng-xia-de-shu-zi-lcof/
 */
class LastRemaining: NSObject {
    override init() {
        super.init()
        lastRemaining(5, 3)
    }
    func lastRemaining(_ n: Int, _ m: Int) -> Int {
        var arr = [Int]()
        
        for i in 0..<n {
            arr.append(i)
        }
        
        var intm = 0
        
        while arr.count != 1 {
            intm = (intm + m - 1) % arr.count
            arr.remove(at:intm)
        }
        
        return arr[0]
        
    }
}
