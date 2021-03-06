//
//  MirrorTree.swift
//  TestLeet
//
//  Created by zhangkk on 2020/2/11.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**请完成一个函数，输入一个二叉树，该函数输出它的镜像。

例如输入：

     4
   /   \
  2     7
 / \   / \
1   3 6   9
镜像输出：

     4
   /   \
  7     2
 / \   / \
9   6 3   1

 

示例 1：

输入：root = [4,2,7,1,3,6,9]
输出：[4,7,2,9,6,3,1]
 

限制：

0 <= 节点个数 <= 1000

来源：力扣（LeetCode）
链接：https://leetcode-cn.com/problems/er-cha-shu-de-jing-xiang-lcof
著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。*/


class MirrorTree: NSObject {
    
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

    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        guard let rootV = root else {
            return root;
        }
        swap(&rootV.left, &rootV.right)
        mirrorTree(rootV.right)
        mirrorTree(rootV.left)
        return rootV;
    }
}
