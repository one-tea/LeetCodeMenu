//
//  WaysToChange.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/23.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class WaysToChange: NSObject {
    func waysToChange(_ n: Int) -> Int {
        var nums = [25, 10, 5, 1]
        return way(nums, n)
    }
    func way(_ nums:[Int], _ n:Int) -> Int {
        var temp:[Int] = []
        var ans = 0
        
        for i in 0..<nums.count {
            let num = nums[i]
            if n > num {
                if n/num > 0 {
                    if n % num > 1 {
                        
                    }
                    temp.append(n)
                }
            }
        }
        return ans
    }
}

/**
 硬币。给定数量不限的硬币，币值为25分、10分、5分和1分，编写代码计算n分有几种表示法。(结果可能会很大，你需要将结果模上1000000007)
 
 示例1:
 
 输入: n = 5
 输出：2
 解释: 有两种方式可以凑成总金额:
 5=5
 5=1+1+1+1+1
 示例2:
 
 输入: n = 10
 输出：4
 解释: 有四种方式可以凑成总金额:
 10=10
 10=5+5
 10=5+1+1+1+1+1
 10=1+1+1+1+1+1+1+1+1+1
 说明：
 
 注意:
 
 你可以假设：
 
 0 <= n (总金额) <= 1000000
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/coin-lcci
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
