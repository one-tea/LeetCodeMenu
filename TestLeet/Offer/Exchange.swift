//
//  Exchange.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/26.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class Exchange: NSObject {
    override init() {
        super.init()
        print(exchange([1,2,3,4]))
    }
    
    func exchange(_ nums: [Int]) -> [Int] {
        var nums = nums
        if nums.count == 0 {
            return nums
        }
        
        var pre = 0
        var tra = nums.count - 1
        
        while pre < tra {
            // 奇数
            while pre < tra && nums[pre] % 2 != 0 {
                pre += 1
            }
            // 偶数
            while pre < tra && nums[tra] % 2 == 0 {
                tra -= 1
            }
            // 交换奇偶
            if pre < tra {
                let temp = nums[pre]
                nums[pre] = nums[tra]
                nums[tra] = temp
            }
        }
        return nums
    }
}

/**
 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数位于数组的前半部分，所有偶数位于数组的后半部分。

  

 示例：

 输入：nums = [1,2,3,4]
 输出：[1,3,2,4]
 注：[3,1,2,4] 也是正确的答案之一。
  

 提示：

 1 <= nums.length <= 50000
 1 <= nums[i] <= 10000
 通过次数42,004提交次数65,369

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
