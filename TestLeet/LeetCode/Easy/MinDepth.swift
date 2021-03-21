//
//  MinDepth.swift
//  TestLeet
//
//  Created by kevin on 2020/11/18.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class MinDepth: NSObject {
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init() { self.val = 0; self.left = nil; self.right = nil; }
        public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
        public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
            self.val = val
            self.left = left
            self.right = right
        }
    }
    
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        
        var index = 0
        
        if ((root?.left) != nil) {
            index = min(index, minDepth(root?.left))
        }
        
        if ((root?.right) != nil) {
            index = min(index, minDepth(root?.right))
        }
        return index + 1
    }
}

/**
 111. 二叉树的最小深度
 给定一个二叉树，找出其最小深度。

 最小深度是从根节点到最近叶子节点的最短路径上的节点数量。

 说明：叶子节点是指没有子节点的节点。

  

 示例 1：


 输入：root = [3,9,20,null,null,15,7]
 输出：2
 示例 2：

 输入：root = [2,null,3,null,4,null,5,null,6]
 输出：5
  

 提示：

 树中节点数的范围在 [0, 105] 内
 -1000 <= Node.val <= 1000
 通过次数153,911提交次数340,257
 */
