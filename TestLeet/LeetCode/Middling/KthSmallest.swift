//
//  KthSmallest.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/19.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class KthSmallest: NSObject {
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
        let root = TreeNode.init(3)
        root.left = TreeNode.init(1)
        root.right = TreeNode.init(4)
        root.left?.left = TreeNode.init(2)
        print(kthSmallest(root, 1))
    }
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var arr:[Int] = []
        BFS(&arr, root)
        return arr[k-1]
        
    }
    // 二分搜索树，将左子树永远小于右子树，故先添加左子树，数组就是有小到大顺序
    func BFS(_ arr:inout [Int], _ root: TreeNode?) {
        if root == nil {return}
        BFS(&arr, root?.left)
        arr.append(root?.val ?? 0)
        BFS(&arr, root?.right)
    }

}
/**
 给定一个二叉搜索树，编写一个函数 kthSmallest 来查找其中第 k 个最小的元素。

 说明：
 你可以假设 k 总是有效的，1 ≤ k ≤ 二叉搜索树元素个数。

 示例 1:

 输入: root = [3,1,4,null,2], k = 1
    3
   / \
  1   4
   \
    2
 输出: 1
 示例 2:

 输入: root = [5,3,6,2,4,null,null,1], k = 3
        5
       / \
      3   6
     / \
    2   4
   /
  1
 输出: 3
 进阶：
 如果二叉搜索树经常被修改（插入/删除操作）并且你需要频繁地查找第 k 小的值，你将如何优化 kthSmallest 函数？

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/kth-smallest-element-in-a-bst
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
