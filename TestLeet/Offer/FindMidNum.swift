//
//  FindMidNum.swift
//  TestLeet
//
//  Created by zhangkk on 3/17/21.
//  Copyright © 2021 KK. All rights reserved.
//

import UIKit

class FindMidNum: NSObject {
    override init() {
        super.init()
        print(findMidNum([0,1, 6, 9, 2, 1, 5, 15, 20]))
    }
    
    func findMidNum(_ nums:[Int]) -> [Int] {
        if nums.count < 3 {return []}
        
        var temp = Array.init(repeating: 0, count: nums.count)
        var min = nums.last!
        
        for i in (0..<nums.count).reversed() {
            if nums[i] < min {
                min = nums[i]
            }
            temp[i] = min
        }
        
        var newNums = [Int]()
        var max = nums.first!
        for j in 0..<nums.count {
            if nums[j] > max {
                max = nums[j]
            }
            if nums[j] >= max && nums[j] < temp[j] {
                newNums.append(nums[j])
            }
        }
        return newNums
    }
}
