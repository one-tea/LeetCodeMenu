//
//  IsPalindrome.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/29.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class IsPalindrome: NSObject {

     public class ListNode {
         public var val: Int
         public var next: ListNode?
         public init(_ val: Int) {
             self.val = val
             self.next = nil
         }
     }
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {return true}
        var head = head
        var arr:[Int] = []
        
        while head != nil {
            arr.append(head!.val)
            head = head?.next
        }
        
        var pre = 0
        var tral = arr.count - 1
        while pre < tral {
            if arr[pre] != arr[tral] {
                return false
            }
            pre += 1
            tral -= 1
        }
        return true
    }
}
/**
 请判断一个链表是否为回文链表。

 示例 1:

 输入: 1->2
 输出: false
 示例 2:

 输入: 1->2->2->1
 输出: true
 进阶：
 你能否用 O(n) 时间复杂度和 O(1) 空间复杂度解决此题？

 通过次数109,802提交次数256,905

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/palindrome-linked-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
