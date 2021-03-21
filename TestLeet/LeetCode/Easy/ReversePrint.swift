//
//  ReversePrint.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/28.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
// 方法一 遍历 O(2N)
class ReversePrint: NSObject {
    func reversePrint(_ head: ListNode?) -> [Int] {
        
        var head = head
        var list:[Int] = []
        
        while head != nil {
            list.append(head?.val ?? 0)
            head = head?.next
        }
        return list.reversed()
    }
    
}

// 方法二 递归 O(N)
class ReversePrint_recursion {
    func reversePrint(_ head: ListNode?) -> [Int] {
        // 递归解法
        var results: [Int] = []
        reverseCursive(head, &results)
        return results
    }
    
    func reverseCursive(_ head: ListNode?, _ results: inout [Int]) {
        if head == nil {
            return
        }
        reverseCursive(head?.next, &results)
        results.append(head!.val)
    }
}

/**
 输入一个链表的头节点，从尾到头反过来返回每个节点的值（用数组返回）。

  

 示例 1：

 输入：head = [1,3,2]
 输出：[2,3,1]
  

 限制：

 0 <= 链表长度 <= 10000

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/cong-wei-dao-tou-da-yin-lian-biao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
