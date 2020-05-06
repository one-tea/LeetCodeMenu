//
//  CanJump.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/17.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给定一个非负整数数组，你最初位于数组的第一个位置。

 数组中的每个元素代表你在该位置可以跳跃的最大长度。

 判断你是否能够到达最后一个位置。

 示例 1:

 输入: [2,3,1,1,4]
 输出: true
 解释: 我们可以先跳 1 步，从位置 0 到达 位置 1, 然后再从位置 1 跳 3 步到达最后一个位置。
 示例 2:

 输入: [3,2,1,0,4]
 输出: false
 解释: 无论怎样，你总会到达索引为 3 的位置。但该位置的最大跳跃长度是 0 ， 所以你永远不可能到达最后一个位置。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/jump-game
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class CanJump: NSObject {
    override init() {
        super.init()
        print(canJump([3,2,1,0,4]))
    }
    func canJump(_ nums: [Int]) -> Bool {
//           return jumpStep(nums, 1)
        return jump(nums)
       }
    // 第一种递归每个位置是否能到达，复杂度最坏O(n2), 最好On
    func jumpStep(_ nums:[Int], _ index:Int) -> Bool {
        if nums.count  == index {
            return true
        }
        var isCan = false
        for i in 0..<index {
            if nums[i] >= index - i {
                isCan = true
                break
            }
        }
        return isCan ? jumpStep(nums, index + 1) : false
    }
    // 第二种, 每一个位置+最大步数，是否能到达终点
    func jump(_ nums:[Int]) -> Bool {
        var maxV = 0
         for i in 0..<nums.count {
             if i <= maxV {
                 maxV = max(maxV, i + nums[i])
             }
             if maxV >= nums.count - 1 {
                 return true
             }
         }
         return false
    }
    
    
}
