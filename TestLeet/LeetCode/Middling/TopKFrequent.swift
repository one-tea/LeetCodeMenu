//
//  TopKFrequent.swift
//  TestLeet
//
//  Created by zhangkk on 1/9/21.
//  Copyright © 2021 KK. All rights reserved.
//

import UIKit

class TopKFrequent {
    init() {
       print(topKFrequent([4,1,-1,2,-1,2,3], 1))
    }
    
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        if nums.count < 0 {return []}
        
        var map = [Int:Int]()
        for num in nums {
            map[num, default:0] += 1
        }
        
        var bucket = Array.init(repeating:[Int](), count: nums.count+1)
        for key in map.keys {
            let value = map[key];
            bucket[value!].append(key)
        }
        
        let res = bucket.reversed().flatMap{$0}
        
        return Array(res[0..<k])
    }
}



/**
 347. 前 K 个高频元素
 给定一个非空的整数数组，返回其中出现频率前 k 高的元素。

  

 示例 1:

 输入: nums = [1,1,1,2,2,3], k = 2
 输出: [1,2]
 示例 2:

 输入: nums = [1], k = 1
 输出: [1]
  

 提示：

 你可以假设给定的 k 总是合理的，且 1 ≤ k ≤ 数组中不相同的元素的个数。
 你的算法的时间复杂度必须优于 O(n log n) , n 是数组的大小。
 题目数据保证答案唯一，换句话说，数组中前 k 个高频元素的集合是唯一的。
 你可以按任意顺序返回答案。
 通过次数125,313提交次数202,681
 */
