//
//  Reverse.swift
//  TestLeet
//
//  Created by zhangkk on 2020/5/8.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class Reverse: NSObject {
    override init() {
        super.init()
        print(reverse(1534236469))
    }
    func reverse(_ x: Int) -> Int {
        if x > Int.max || x < Int.min {return 0}
        var f = 1
        var x = x
        if x < 0 {
            f = -1
            x = -x
        }
        let reverse_x:Int = (Int(String(String(x).reversed())) ?? 0) * f
        
        if reverse_x > Int32.max || reverse_x < Int32.min {return 0}
        
        return reverse_x
     }
}
/**
 给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。

 示例 1:

 输入: 123
 输出: 321
  示例 2:

 输入: -123
 输出: -321
 示例 3:

 输入: 120
 输出: 21
 注意:

 假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−231,  231 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-integer
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
