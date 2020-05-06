//
//  DiameterOfBinaryTree.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/6.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 给定一棵二叉树，你需要计算它的直径长度。一棵二叉树的直径长度是任意两个结点路径长度中的最大值。这条路径可能穿过也可能不穿过根结点。

  

 示例 :
 给定二叉树

           1
          / \
         2   3
        / \
       4   5
 返回 3, 它的长度是路径 [4,2,1,3] 或者 [5,2,1,3]。

  

 注意：两结点之间的路径长度是以它们之间边的数目表示。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/diameter-of-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class DiameterOfBinaryTree: NSObject {
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
        let root = TreeNode.init(1)
        root.left = TreeNode.init(2)
        root.right = TreeNode.init(3)
        root.left?.left = TreeNode.init(4)
        root.left?.right = TreeNode.init(5)
        root.left?.right?.left = TreeNode.init(6)
        
       print(diameterOfBinaryTree(root))
    }
    var ans = 1
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        depth(root)
        return ans - 1
    }
    func depth(_ root:TreeNode?) -> Int {
        if root == nil {return 0}
        let left = depth(root?.left)
        let right = depth(root?.right)
        ans = max(ans, left + right + 1)
        return max(left, right) + 1
    }
}
