//
//  LengthOfLongestSubstring.swift
//  TestLeet
//
//  Created by zhangkk on 1/30/21.
//  Copyright © 2021 KK. All rights reserved.
//

import UIKit

class LengthOfLongestSubstring {
    init() {
        print(lengthOfLongestSubstring("abcbacbb"))
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if(s == ""){
            return 0
        }
        var maxStr = String()
        var curStr = String()
        for char in s {
            while curStr.contains(char) {
                curStr.remove(at: curStr.startIndex)
            }
            curStr.append(char)
            if(curStr.count > maxStr.count){
                maxStr = curStr
            }
        }
        return maxStr.count
    }
}

/**
 3. 无重复字符的最长子串
 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。

  

 示例 1:

 输入: s = "abcabcbb"
 输出: 3
 解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
 示例 2:

 输入: s = "bbbbb"
 输出: 1
 解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
 示例 3:

 输入: s = "pwwkew"
 输出: 3
 解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
      请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。
 示例 4:

 输入: s = ""
 输出: 0
  

 提示：

 0 <= s.length <= 5 * 104
 s 由英文字母、数字、符号和空格组成

 LeetCode
 https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
 */
