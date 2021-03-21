//
//  MergerTwoLists.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/26.
//  Copyright © 2020 KK. All rights reserved.
//

class MergerTwoLists {
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    
     init() {
        
        let l1 = ListNode(1)
        l1.next = ListNode(2)
        l1.next?.next = ListNode(4)
        
        let l2 = ListNode(1)
        l2.next = ListNode(3)
        l2.next?.next = ListNode(4)
        
        mergeTwoLists(l1, l2)
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        if l1 == nil {
            return l2
        } else if l2 == nil {
            return l1
        }
        
        let combine:ListNode?
        
        if l1?.val ?? 0 > l2?.val ?? 0 {
            combine = l2
            combine?.next = mergeTwoLists(l1, l2?.next)
        } else {
            combine = l1
            combine?.next = mergeTwoLists(l1?.next, l2)
        }
        
        return combine
    }
}
/**
 剑指 Offer 25. 合并两个排序的链表
 输入两个递增排序的链表，合并这两个链表并使新链表中的节点仍然是递增排序的。

 示例1：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4
 限制：

 0 <= 链表长度 <= 1000

 注意：本题与主站 21 题相同：https://leetcode-cn.com/problems/merge-two-sorted-lists/

 通过次数38,298提交次数51,672
 */
