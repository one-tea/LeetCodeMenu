//
//  LongestCommonPrefix.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/21.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class LongestCommonPrefix: NSObject {
    override init() {
        super.init()
        print(longestCommonPrefix(["flower","flow","flight"]))
    }
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        let preObj = strs[0]
        var k = 0
        var com = ""
        var iscom = true
        for i in preObj.indices {
            com.append(preObj[i])
            for j in 0..<strs.count {
                if !strs[j].hasPrefix(com) {
                    iscom = false
                    break
                }
            }
            if iscom {
                k += 1
            }
        }
        return String(preObj.prefix(k))
    }
}
/**
 编写一个函数来查找字符串数组中的最长公共前缀。
 
 如果不存在公共前缀，返回空字符串 ""。
 
 示例 1:
 
 输入: ["flower","flow","flight"]
 输出: "fl"
 示例 2:
 
 输入: ["dog","racecar","car"]
 输出: ""
 解释: 输入不存在公共前缀。
 说明:
 
 所有输入只包含小写字母 a-z 。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-common-prefix
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
