//
//  NumberOf1.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/26.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class NumberOf1: NSObject {
    override init() {
        super.init()
        print(hammingWeight(3))
    }
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var flag = 1
        
        while flag > 1 {
            // 011 & 001 = 001
            if n & flag > 1 { // & : 二进制中表示，相同位求且 ，1&1 = 1, 1&0 = 0
                count += 1
            }
            
            flag = flag << 1 // << : 表示左移一位，比如 001 左移一位 010
        }
        return count
        
    }
}
/**
 请实现一个函数，输入一个整数，输出该数二进制表示中 1 的个数。例如，把 9 表示成二进制是 1001，有 2 位是 1。因此，如果输入 9，则该函数输出 2。

 示例 1：

 输入：00000000000000000000000000001011
 输出：3
 解释：输入的二进制串 00000000000000000000000000001011 中，共有三位为 '1'。
 示例 2：

 输入：00000000000000000000000010000000
 输出：1
 解释：输入的二进制串 00000000000000000000000010000000 中，共有一位为 '1'。
 示例 3：

 输入：11111111111111111111111111111101
 输出：31
 解释：输入的二进制串 11111111111111111111111111111101 中，共有 31 位为 '1'。
  

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-jin-zhi-zhong-1de-ge-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
