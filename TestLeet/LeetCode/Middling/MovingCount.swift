//
//  MovingCount.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/8.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/**
 地上有一个m行n列的方格，从坐标 [0,0] 到坐标 [m-1,n-1] 。一个机器人从坐标 [0, 0] 的格子开始移动，它每次可以向左、右、上、下移动一格（不能移动到方格外），也不能进入行坐标和列坐标的数位之和大于k的格子。例如，当k为18时，机器人能够进入方格 [35, 37] ，因为3+5+3+7=18。但它不能进入方格 [35, 38]，因为3+5+3+8=19。请问该机器人能够到达多少个格子？

  

 示例 1：

 输入：m = 2, n = 3, k = 1
 输出：3
 示例 1：

 输入：m = 3, n = 1, k = 0
 输出：1
 提示：

 1 <= n,m <= 100
 0 <= k <= 20

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/ji-qi-ren-de-yun-dong-fan-wei-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
class MovingCount: NSObject {
    override init() {
        super.init()
        print(movingCount(38, 15, 9))
    }
    
    func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
        if (k == 0) {return 1}
        var vis = Array(repeating: Array(repeating:0, count: n), count: m)

        var ans = 1;
        dfs(row: 0, col: 0, m: m, n: n, k: k, visited: &vis, ans: &ans)
        return ans
    }
    
    func dfs(row:Int, col:Int, m:Int, n:Int, k:Int, visited: inout [[Int]], ans:inout Int)  {
        if row < 0 || row >= m || col < 0 || col >= n ||  visited[row][col] == 1 || getSum(row) + getSum(col) > k{
            return
        }
        
        visited[row][col] = 1;
        ans += 1
        dfs(row: row+1, col: col, m: m, n: n, k: k, visited: &visited, ans: &ans)
        dfs(row: row, col: col-1, m: m, n: n, k: k, visited: &visited, ans: &ans)
        dfs(row: row-1, col: col, m: m, n: n, k: k, visited: &visited, ans: &ans)
        dfs(row: row, col: col+1, m: m, n: n, k: k, visited: &visited, ans: &ans)

    }
    
      func getSum(_ num: Int) -> Int {
            var ans = 0
            var num = num
            while num != 0 {
                ans += num % 10
                num = num / 10
            }
            return ans
        }
}
