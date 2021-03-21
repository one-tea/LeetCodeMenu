//
//  MajorityElement.swift
//  TestLeet
//
//  Created by kevin on 2020/11/2.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class MajorityElement: NSObject {
    
    override init() {
        super.init()
        print(majorityElement([1,3,3,4]))
    }
    func majorityElement(_ nums: [Int]) -> [Int] {
        
        if nums.count < 2 {
            return nums
        }
  
        var value1 = nums.first, index1 = 0
        var value2 = nums.first, index2 = 0
        
        for i in 0..<nums.count {
            let value = nums[i]
            if value == value1  {
                index1 += 1
            } else if value == value2 {
                index2 += 1
            } else if index1 == 0 {
                value1 = value
                index1 += 1
            } else if index2 == 0 {
                value2 = value
                index2 += 1
            } else {
                index1 -= 1
                index2 -= 1
            }
            
        }
        
        var count1 = 0
        var count2 = 0
        for num in nums {
            if num == value1 {
                count1 += 1
            } else if num == value2 {
                count2 += 1
            }
        }
        
        var counts = [Int]()
        if count1 > nums.count/3 {
            counts.append(value1!)
        }
        if count2 > nums.count/3 {
            counts.append(value2!)
        }
        return counts
        
       }
}










/**
 229. 求众数 II
 给定一个大小为 n 的整数数组，找出其中所有出现超过 ⌊ n/3 ⌋ 次的元素。

 进阶：尝试设计时间复杂度为 O(n)、空间复杂度为 O(1)的算法解决此问题。

  

 示例 1：

 输入：[3,2,3]
 输出：[3]
 示例 2：

 输入：nums = [1]
 输出：[1]
 示例 3：

 输入：[1,1,1,3,3,2,2,2]
 输出：[1,2]
  

 提示：

 1 <= nums.length <= 5 * 104
 -109 <= nums[i] <= 109
 通过次数22,272提交次数50,540
 在真实的面试中遇到过这道题？
 贡献者
 LeetCode

 */
