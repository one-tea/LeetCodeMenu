//
//  SearchTreeDepth.swift
//  TestLeet
//
//  Created by zhangkk on 2020/1/28.
//  Copyright © 2020 KK. All rights reserved.
//

/*给定一个二叉树，找出其最大深度。
 
 二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。
 
 说明: 叶子节点是指没有子节点的节点。
 
 示例：
 给定二叉树 [3,9,20,null,null,15,7]，
 
 3
 / \
 9  20
 /  \
 15   7
 返回它的最大深度 3 。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/maximum-depth-of-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

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

class SearchTreeDepth {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let rootV = root else {
            return 0
        }
        
        var leftV = maxDepth(rootV.left)
        var rightV = maxDepth(rootV.right)
        
        return max(leftV, rightV) + 1
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

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/balanced-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class TreeBanlanceSolution {
    var res:Bool! = true
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        guard root != nil else {
            return true
        }
        maxDepth(root)
        return res
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let rootV = root else {
            return 1
        }
        
        let leftV = maxDepth(rootV.left) + 1
        let rightV = maxDepth(rootV.right) + 1
        if abs(leftV - rightV) > 1 {
            res = false
        }
        return max(leftV, rightV)
    }
}
