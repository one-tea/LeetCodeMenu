//
//  ThreeSum.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/18.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class ThreeSum: NSObject {
    override init() {
        super.init()
        print(threeSum([]))
    }
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let nums = nums.sorted()
        var ans = Set<[Int]>()
        for i in 0..<nums.count {
            if nums[i] > 0 {
                return Array(ans)
            }
            if i>0 && nums.first == nums.last {
                return Array(ans)
            }
            var first = i + 1
            var last = nums.count - 1
            while first < last {
                let res = nums[i] + nums[first] + nums[last]
                if res == 0 {
                    ans.insert([nums[first] , nums[i], nums[last]])
                    while first < last && nums[first] == nums[first + 1] {
                        first += 1
                    }
                    while first < last && nums[last] == nums[last - 1] {
                        last -= 1
                    }
                }
                if res <= 0 {
                    first += 1
                } else {
                    last -= 1
                }
            }
            
        }
        return Array(ans)
    }
}
/**
 给你一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？请你找出所有满足条件且不重复的三元组。
 
 注意：答案中不可以包含重复的三元组。
 
  
 
 示例：
 
 给定数组 nums = [-1, 0, 1, 2, -1, -4]，
 [-4, -1, -1, 0, 1, 2]，
 
 满足要求的三元组集合为：
 [
 [-1, 0, 1],
 [-1, -1, 2]
 ]
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/3sum
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
