//
//  SortedArrayToBST.swift
//  TestLeet
//
//  Created by kevin on 2020/9/9.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class SortedArrayToBST: NSObject {
    override init() {
        super.init()
        sortedArrayToBST([-10,-5,0,5,9])
    }
    
        func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
            help(nums, 0, nums.count-1)
        }

        func help(_ nums:[Int], _ left:Int, _ right:Int) -> TreeNode? {
            if left > right {
                return nil
            }

            let mid = (right - left)/2
        
            let root = TreeNode(nums[mid])
            root.left = help(nums, left, mid-1)
            root.right = help(nums, mid+1, right)
            
            return root
        }
}
