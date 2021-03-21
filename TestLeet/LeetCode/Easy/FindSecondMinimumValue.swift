//
//  FindSecondMinimumValue.swift
//  TestLeet
//
//  Created by kevin on 2020/12/1.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class FindSecondMinimumValue:NSObject {
    override init() {
        super.init()
        
    }
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        if root == nil {return -1}
        return DFS(root, root!.val)
    }
    
    func DFS(_ root: TreeNode?, _ minv:Int) -> Int {
        if root == nil {return -1}
        
        if root!.val > minv {
            return root!.val
        }
        let left = DFS(root?.left, minv)
        let right = DFS(root?.right, minv)
        
        if left == -1 {
            return right
        }
        if right == -1 {
            return left
        }
        
        
        return min(left, right)
        
    }
    
}

/**
 671. 二叉树中第二小的节点
 给定一个非空特殊的二叉树，每个节点都是正数，并且每个节点的子节点数量只能为 2 或 0。如果一个节点有两个子节点的话，那么该节点的值等于两个子节点中较小的一个。

 更正式地说，root.val = min(root.left.val, root.right.val) 总成立。

 给出这样的一个二叉树，你需要输出所有节点中的第二小的值。如果第二小的值不存在的话，输出 -1 。

  

 示例 1：


 输入：root = [2,2,5,null,null,5,7]
 输出：5
 解释：最小的值是 2 ，第二小的值是 5 。
 示例 2：


 输入：root = [2,2,2]
 输出：-1
 解释：最小的值是 2, 但是不存在第二小的值。
  

 提示：

 树中节点数目在范围 [1, 25] 内
 1 <= Node.val <= 231 - 1
 对于树中每个节点 root.val == min(root.left.val, root.right.val)
 通过次数18,592提交次数39,770
 在真实的面试中遇到过这道题？

 */
