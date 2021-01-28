//
//  IsBalanced.swift
//  TestLeet
//
//  Created by zhangkk on 8/17/20.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class IsBalanced: NSObject {
    func isBalanced(_ root: TreeNode?) -> Bool {
           var arr:[TreeNode?] = [root]
           var left = 0
           var right = 0

           while arr.count != 0 {
            if root?.left != nil {
                arr.append(root?.left)
                left += 1
            }
            if root?.right != nil {
                arr.append(root?.right)
                right += 1
            }
            arr.removeFirst()
           }
        return abs(left - right) == 1
       }
}

/**
 给定一个二叉树，判断它是否是高度平衡的二叉树。

 本题中，一棵高度平衡二叉树定义为：

 一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过1。

 示例 1:

 给定二叉树 [3,9,20,null,null,15,7]

     3
    / \
   9  20
     /  \
    15   7
 返回 true 。

 示例 2:

 给定二叉树 [1,2,2,3,3,null,null,4,4]

        1
       / \
      2   2
     / \
    3   3
   / \
  4   4
 返回 false 。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/balanced-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
