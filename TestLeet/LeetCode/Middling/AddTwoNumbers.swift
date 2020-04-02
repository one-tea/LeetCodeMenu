//
//  AddTwoNumbers.swift
//  TestLeet
//
//  Created by zhangkk on 2020/3/21.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。

 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。

 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。

 示例：

 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 通过次数362,335提交次数981,240

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */


 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }

class AddTwoNumbers: NSObject {
    
    override init() {
        super.init()
        let l1 = ListNode(2)
        l1.next = ListNode(4)
        l1.next?.next = ListNode(3)
        
        let l2 = ListNode(5)
        l2.next = ListNode(6)
        l2.next?.next = ListNode(4)
        
        _ = addTwoNumbers(l1, l2)
        
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }
        var l1 = l1
        var l2 = l2
        
        var temp = 0
        var node:ListNode?
        var nodePre:ListNode?
        while l1 != nil || l2 != nil || temp == 1 {
            var sum = (l1?.val ?? 0) + (l2?.val ?? 0)
            sum += temp
            if sum >= 10 {
                sum = sum%10
                temp = 1
            } else {
                temp = 0
            }
            if node != nil {
                node?.next = ListNode(sum)
                node = node?.next
            } else {
               node = ListNode(sum)
               nodePre = node
            }
            l1 = l1?.next
            l2 = l2?.next
        }
        
        return nodePre
        
    }
}
