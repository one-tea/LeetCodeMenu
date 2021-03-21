//
//  Solution.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/21.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class listNode:NSObject {
    var value:String?
    var next:listNode?
    init(_ value:String?, _ next:listNode?) {
        self.value = value
        self.next = next
    }
}

class DeleteNode: NSObject {
    override init() {
        super.init()
        let head = listNode("a", listNode("b", listNode("c", listNode("d", listNode("e", listNode("f", nil))))))
        deleteNode(head.next?.next)
        printList(head)
        
    }
    
    func deleteNode(_ midHead: listNode?) {
        guard let node = midHead else {
            return
        }
        
        var nextNode = node.next
        node.value = nextNode?.value
        node.next = nextNode?.next
        
        nextNode = nil
    }
    
    func printList(_ listNode:listNode?) {
        guard let listNode = listNode else {
            return
        }
        print(listNode.value)
        printList(listNode.next)
    }
}
/*
 实现一种算法，删除单向链表中间的某个节点（即不是第一个或最后一个节点），假定你只能访问该节点。

  

 示例：

 输入：单向链表a->b->c->d->e->f中的节点c
 结果：不返回任何数据，但该链表变为a->b->d->e->f

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/delete-middle-node-lcci
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
