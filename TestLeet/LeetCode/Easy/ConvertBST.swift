//
//  ConvertBST.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/6.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

/**
 给定一个二叉搜索树（Binary Search Tree），把它转换成为累加树（Greater Tree)，使得每个节点的值是原来的节点值加上所有大于它的节点值之和。
 
  
 
 例如：
 
 输入: 原始二叉搜索树:
 5
 /   \
 2     13
 
 输出: 转换为累加树:
 18
 /   \
 20     13
  
 
 注意：本题和 1038: https://leetcode-cn.com/problems/binary-search-tree-to-greater-sum-tree/ 相同
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/convert-bst-to-greater-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

class ConvertBST:NSObject {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }
    override init() {
        super.init()
        var tree = TreeNode.init(5)
        tree.left = TreeNode.init(2)
        tree.right = TreeNode.init(13)
        
        var nodes = convertBST(tree)
        print(convertBST(tree))
    }
    var sum = 0
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        if root != nil {
            convertBST(root?.right)
            sum += root?.val ?? 0
            root?.val = sum
            convertBST(root?.left)
        }
        return root
    }

}
