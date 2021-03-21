//
//  MirrorTree02.swift
//  TestLeet
//
//  Created by kevin on 2020/9/28.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit



class MirrorTree02: NSObject {
    class TreeNode:NSObject {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
         }
      }
    func mirrorTree(_ root:TreeNode?) -> TreeNode? {
        guard var root = root else {
            return nil
        }
        
        let left = root.left
        root.left = root.right
        root.right = left
        
        mirrorTree(root.left)
        mirrorTree(root.right)
        
        return root
    }

}

/*
 剑指 Offer 27. 二叉树的镜像
 
 请完成一个函数，输入一个二叉树，该函数输出它的镜像。
 
 例如输入：
 
 4
 /   \
 2     7
 / \   / \
 1   3 6   9
 镜像输出：
 
 4
 /   \
 7     2
 / \   / \
 9   6 3   1
 
 
 
 示例 1：
 
 输入：root = [4,2,7,1,3,6,9]
 输出：[4,7,2,9,6,3,1]
 
 
 限制：
 
 0 <= 节点个数 <= 1000
 
 注意：本题与主站 226 题相同：https://leetcode-cn.com/problems/invert-binary-tree/
 
 通过次数66,239提交次数84,081
 */
