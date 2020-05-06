//
//  LowestCommonAncestor.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/28.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class LowestCommonAncestor: NSObject {
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
        let root = TreeNode.init(6)
        root.left = TreeNode(2)
        root.right = TreeNode(8)
        root.left?.left = TreeNode(0)
        root.left?.right = TreeNode(4)
        root.left?.right?.left = TreeNode(3)
        root.left?.right?.right = TreeNode(5)
        root.right?.left = TreeNode(7)
        root.right?.right = TreeNode(9)

        let node = lowestCommonAncestor(root, root.left, root.left)
        print(node?.val)
            
    }
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var node = root
        while node != nil, let p = p, let q = q {
            if p.val > node!.val && q.val > node!.val {
                node = node?.right
            } else if p.val < node!.val && q.val < node!.val {
                node = node?.left
            } else {
                return node
            }
        }
        return node
    }
}
/**
 给定一个二叉搜索树, 找到该树中两个指定节点的最近公共祖先。

 百度百科中最近公共祖先的定义为：“对于有根树 T 的两个结点 p、q，最近公共祖先表示为一个结点 x，满足 x 是 p、q 的祖先且 x 的深度尽可能大（一个节点也可以是它自己的祖先）。”

 例如，给定如下二叉搜索树:  root = [6,2,8,0,4,7,9,null,null,3,5]



  

 示例 1:

 输入: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
 输出: 6
 解释: 节点 2 和节点 8 的最近公共祖先是 6。
 示例 2:

 输入: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
 输出: 2
 解释: 节点 2 和节点 4 的最近公共祖先是 2, 因为根据定义最近公共祖先节点可以为节点本身。
  

 说明:

 所有节点的值都是唯一的。
 p、q 为不同节点且均存在于给定的二叉搜索树中。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-search-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
