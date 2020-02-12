//
//  SectionSort.swift
//  TestLeet
//
//  Created by zhangkk on 2019/11/4.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit

/// 选择排序
class SectionSort: NSObject {
    func sectionSort(_ arr: Array<Int>? ) -> Array<Int>? {
        guard var arrV = arr else { return nil }
        
        for i in 0..<arrV.count {
            for j in i..<arrV.count {
                if arrV[i] > arrV[j] {
                    let temp = arrV[i]
                    arrV[i] = arrV[j]
                    arrV[j] = temp
                }
            }
        }
        return arrV
    }
    // 快排
    func QuickSort( _ arr:inout Array<Int>, _ left:Int , _ right:Int) -> Void {

        guard right >= left else {
            return
        }
        
        var i = left
        var j = right
        let random = arr[i]
        
        while i<j {
            while j>i, arr[j] >= random {
                j-=1
            }
            arr[i] = arr[j]
            while j>i, arr[i] <= random {
                i+=1
            }
            arr[j] = arr[i]
        }
        
        arr[i] = random
        QuickSort(&arr, left, i-1)
        QuickSort(&arr, i+1, right)
    }
    
    func QuickSortOther(_ arr:Array<Any>) -> Array<Any> {
        guard arr.count > 0  else {
            return Array.init()
        }
        var lowArr:Array<Any> = []
        var lastArr:Array<Any> = []
        let random = arr.first as! Int
        
        for i in 0 ..< arr.count {
            let element = arr[i] as! Int
            
            if element >= random {
                lastArr.append(element)
            } else {
                lowArr.append(element);
            }
        }
        
        return QuickSortOther(lowArr) + [random] + QuickSortOther(lastArr)
    }
}

