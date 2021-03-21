//
//  ReverseList.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/28.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class ReverseList: NSObject {
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil { return head}
        
        var pre:ListNode?
        var cur = head
        
        while cur != nil {
            var next = cur?.next
            cur?.next = pre
            
            pre = cur
            cur = next
        }
        return pre
        
    }
}
/**
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

  

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
  

 限制：

 0 <= 节点个数 <= 5000

  

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
