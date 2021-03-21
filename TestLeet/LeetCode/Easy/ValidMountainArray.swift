//
//  ValidMountainArray.swift
//  TestLeet
//
//  Created by kevin on 2020/11/3.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class ValidMountainArray: NSObject {
    override init() {
        super.init()
        print(validMountainArray([5,4,3,2,1,0]))
    }
    
    func validMountainArray(_ A:[Int]) -> Bool {
        var left = 0, right = A.count - 1
        while left < A.count-1 && A[left + 1] > A[left] {
            left += 1
        }
        while right > 0 && A[right - 1] > A[right] {
            right -= 1
        }
        // 首尾数据也为false
        return left > 0 && right < A.count-1 && left == right
        
    }
    
    /*
    func validMountainArray(_ A: [Int]) -> Bool {
        if A.count < 3 {
            return false
        }
        var mid = 0
        for i in 0..<A.count-1 {
            if A[i+1] < A[i] {
                mid = i
                break
            }
        }
        if mid == 0 {
            return false
        }
        for i in mid..<A.count-1 {
            if A[i+1] >= A[i] {
                return false
            }
        }
        return true
    }
  */
}








/**
 941. 有效的山脉数组
 给定一个整数数组 A，如果它是有效的山脉数组就返回 true，否则返回 false。

 让我们回顾一下，如果 A 满足下述条件，那么它是一个山脉数组：

 A.length >= 3
 在 0 < i < A.length - 1 条件下，存在 i 使得：
 A[0] < A[1] < ... A[i-1] < A[i]
 A[i] > A[i+1] > ... > A[A.length - 1]
  



  

 示例 1：

 输入：[2,1]
 输出：false
 示例 2：

 输入：[3,5,5]
 输出：false
 示例 3：

 输入：[0,3,2,1]
 输出：true
  

 提示：

 0 <= A.length <= 10000
 0 <= A[i] <= 10000


 */
