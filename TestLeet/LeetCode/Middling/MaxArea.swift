//
//  MaxArea.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/18.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0)。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。

 说明：你不能倾斜容器，且 n 的值至少为 2。

 图中垂直线代表输入数组 [1,8,6,2,5,4,8,3,7]。在此情况下，容器能够容纳水（表示为蓝色部分）的最大值为 49。

 示例：

 输入：[1,8,6,2,5,4,8,3,7]
 输出：49

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/container-with-most-water
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class MaxArea: NSObject {
    override init() {
        super.init()
        print(maxArea2([1,8,6,2,5,4,8,3,7]))
    }
    // 解法1：复杂度n2, 遍历找出最大容量
    func maxArea1(_ height: [Int]) -> Int {
        var max = 0
        for i in 0..<height.count {
            for j in i..<height.count {
                let h = height[j] > height[i] ? height[i] : height[j]
                let w = j - i
                let ans = w * h
                if ans > max {
                    max = ans
                }
            }
        }
        return max
    }
    // 解法2：复杂度n， 首尾开始，遍历找出最大值
    func maxArea2(_ height: [Int]) -> Int {
        var maxAns = 0, i = 0, j = height.count - 1
        while i < j {
            if height[i] > height[j] {
                maxAns = max(maxAns, height[j] * (j - i))
                j -= 1
            } else {
                maxAns = max(maxAns, height[i] * (j - i))
                i += 1
            }
        }
        return maxAns
    }
    

}
