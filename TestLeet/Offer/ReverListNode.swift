//
//  ReverListNode.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/19.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/*
 反转链表打印
 */

class Node: NSObject {
    var value:Int
    var next:Node?
    
    init(_ value:Int, _ next:Node?) {
        self.value = value
        self.next = next
    }
}

class ReverListNode: NSObject {
    override init() {
        super.init()
        let listNode = Node(1, Node(2, Node(3, Node(4, Node(5, Node(6, nil))))))
        printNode(rever(listNode))
        
    }
    // 1 <- 2  3
    func rever(_ listNode:Node?) -> Node? {
        var prev:Node?
        var cur = listNode
        while cur != nil {
            // 记录下一个节点, 将第二个节点的next反指向第一个
            let temp = cur?.next
            cur?.next = prev
            // 都往后平移一位
            prev = cur
            cur = temp
        }
        return prev
    }
    
    func printNode(_ listNode:Node?)  {
        guard let _ = listNode else {
            return
        }
        print(listNode?.value ?? 0)
        printNode(listNode?.next)
    }
}
