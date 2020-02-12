//
//  BinarySearch.swift
//  TestLeet
//
//  Created by zhangkk on 2019/10/31.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit

/// 二分查找
class BinarySearch: NSObject {
    func binarySearch(list:Array<Int>?, item:Int?) -> (index:Int?, num:Int?) {
        guard let listV = list, let itemV = item else {
            return (nil, 0)
        }
        var low = 0
        var height = listV.count - 1
        var num = 0
        
        while low <= height {
            num += 1
            let mid = (low + height)/2
            if listV[mid] == itemV {
                return (mid, num)
            } else if listV[mid] < itemV { //当中间数小于查询值
                low = mid + 1
            } else if listV[mid] > itemV { //当中间数大于查询值
                height = mid - 1
            }
  
        }
        return (nil, 0)
    }
}
