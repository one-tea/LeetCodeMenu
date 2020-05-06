//
//  FindDisappearedNumbers.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/6.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给定一个范围在  1 ≤ a[i] ≤ n ( n = 数组大小 ) 的 整型数组，数组中的元素一些出现了两次，另一些只出现一次。

 找到所有在 [1, n] 范围之间没有出现在数组中的数字。

 您能在不使用额外空间且时间复杂度为O(n)的情况下完成这个任务吗? 你可以假定返回的数组不算在额外空间内。

 示例:

 输入:
 [4,3,2,7,8,2,3,1]

 输出:
 [5,6]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/find-all-numbers-disappeared-in-an-array
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class FindDisappearedNumbers: NSObject {
    override init() {
        super.init()
        findDisappearedNumbers([4,3,2,7,8,2,3,1])
    }
    
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var nums = nums
        var arr:Array = [Int]()
        for (index, value) in nums.enumerated() {
             nums[abs(value) - 1] = -abs(nums[abs(value) - 1])
        }
        for (index, value) in nums.enumerated() {
            if value > 0 {
                arr.append(index+1)
            }
          }
        return arr
     }
}
