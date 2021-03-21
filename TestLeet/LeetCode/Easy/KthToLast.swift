//
//  KthToLast.swift
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
class KthToLast: NSObject {
    func kthToLast(_ head: ListNode?, _ k: Int) -> Int {
        if head == nil || k == 0 {
            return 0
        }
        
        var pre = head
        var tra = head
        var index = 0
        
        while tra != nil {
            if index < k {
                tra = tra?.next
            } else {
                pre = pre?.next
                tra = tra?.next
            }
            index += 1
        }
        return pre?.val ?? 0
     }
}
/**
 实现一种算法，找出单向链表中倒数第 k 个节点。返回该节点的值。

 注意：本题相对原题稍作改动

 示例：

 输入： 1->2->3->4->5 和 k = 2
 输出： 4
 说明：

 给定的 k 保证是有效的。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/kth-node-from-end-of-list-lcci
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
