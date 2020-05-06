//
//  ThreeSumClosest.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/19.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class ThreeSumClosest: NSObject {
    override init() {
        super.init()
        print(threeSumClosest([-1,2,1,-4], 1))
    }
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        if nums.count < 3 {
            return 0
        }
        let nums = nums.sorted()
        var ans = nums[0] + nums[1] + nums[2]
        for i in 0..<nums.count-1 {
            var l = i+1
            var r = nums.count-1
            while l < r {
                let sum = nums[i] + nums[l] + nums[r]
                ans = abs(sum - target) < abs(ans - target) ? sum : ans
                
                if l < r && sum < target {
                    l += 1
                } else {
                    r -= 1
                }
                
            }
            
        }
        return ans
    }
}

/**
 给定一个包括 n 个整数的数组 nums 和 一个目标值 target。找出 nums 中的三个整数，使得它们的和与 target 最接近。返回这三个数的和。假定每组输入只存在唯一答案。
 
 例如，给定数组 nums = [-1，2，1，-4], 和 target = 1.
 
 与 target 最接近的三个数的和为 2. (-1 + 2 + 1 = 2).
 通过次数92,759提交次数211,918
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum-closest
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
