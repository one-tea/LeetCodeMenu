//
//  addTwoNumbersII.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/14.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给你两个 非空 链表来代表两个非负整数。数字最高位位于链表开始位置。它们的每个节点只存储一位数字。将这两数相加会返回一个新的链表。

 你可以假设除了数字 0 之外，这两个数字都不会以零开头。

  

 进阶：

 如果输入链表不能修改该如何处理？换句话说，你不能对列表中的节点进行翻转。

  

 示例：

 输入：(7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 8 -> 0 -> 7

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/add-two-numbers-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class AddTwoNumbersII: NSObject {
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    override init() {
        super.init()
        var l1 = ListNode.init(7)
        l1.next = ListNode.init(2)
        l1.next?.next = ListNode.init(4)
        l1.next?.next?.next = ListNode.init(3)
        
        var l2 = ListNode.init(5)
        l2.next = ListNode.init(6)
        l2.next?.next = ListNode.init(4)
        
        
        addTwoNumbers(l1, l2)
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let _ = l1 else {
            return l2
        }
        guard let _ = l2 else {
            return l1
        }
        
        var S1 = [ListNode?]()
        var S2 = [ListNode?]()

        var l1 = l1
        var l2 = l2
        while l1 != nil {
            S1.append(l1)
            l1 = l1?.next
        }
        while l2 != nil {
            S2.append(l2)
            l2 = l2?.next
        }
        
        var nas = 0
        var result:ListNode?
        
        while !S1.isEmpty || !S2.isEmpty || nas != 0 {
            if !S1.isEmpty {
                nas += S1.removeLast()?.val ?? 0
            }
            if !S2.isEmpty {
                nas += S2.removeLast()?.val ?? 0
            }
            let node = ListNode.init(nas%10)
            nas = nas/10
            node.next = result
            result = node
        }
        return result
      }
}
