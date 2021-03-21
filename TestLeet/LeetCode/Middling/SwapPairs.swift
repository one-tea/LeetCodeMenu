//
//  SwapPairs.swift
//  TestLeet
//
//  Created by kevin on 2020/10/13.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class SwapPairs: NSObject {
    func swapPairs(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {return head}
        
        var dummy:ListNode? = ListNode(0)
        dummy?.next = head
        var temp = dummy
        
        while temp?.next != nil && temp?.next?.next != nil{
            let node1 = temp?.next
            let node2 = temp?.next?.next
            
            temp?.next = node2
            node1?.next = node2?.next
            node2?.next = node1
            
            temp = node1
        }
        return dummy?.next
    }
}

/**
 24. 两两交换链表中的节点
 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。

 你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。

  

 示例 1：


 输入：head = [1,2,3,4]
 输出：[2,1,4,3]
 示例 2：

 输入：head = []
 输出：[]
 示例 3：

 输入：head = [1]
 输出：[1]
  

 提示：

 链表中节点的数目在范围 [0, 100] 内
 0 <= Node.val <= 100
 通过次数178,530提交次数262,934
 在真实的面试中遇到过这道题？
 */
