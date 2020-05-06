//
//  LongestPalindrome.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/21.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class LongestPalindrome: NSObject {
    override init() {
        super.init()
        print(longestPalindrome("cbbd"));
    }
    func longestPalindrome(_ s: String) -> String {
        if(s.count < 1){
            return s
        }
        let sMap = s.map{String.init($0)}
        let str = "#" + sMap.joined(separator: "#") + "#" // 插入“#”
        let strLen = str.count
        let arr = Array(str)  //转为数组，便于寻址
        
        var center = 0
        var maxRight = 0
        var p = [Int](repeating: 0, count: strLen)
        
        var maxLen = 1
        var start = 0
        
        for i in 0..<strLen{
            if(i < maxRight){
                let mirror = 2 * center - i
                p[i] = min(maxRight - i, p[mirror])
            }
            var left = i - (p[i] + 1)
            var right = i + (p[i] + 1)
            while(left >= 0 && right < strLen && arr[left] == arr[right]){
                left -= 1
                right += 1
                p[i] += 1
            }
            if(i+p[i] > maxRight){
                maxRight = i + p[i]
                center = i
            }
            if(p[i] > maxLen){
                maxLen = p[i]
                start = (i-maxLen)/2
            }
        }
        return Array(sMap[start..<start+maxLen]).joined()
    }
}
/**
 给定一个字符串 s，找到 s 中最长的回文子串。你可以假设 s 的最大长度为 1000。
 
 示例 1：
 
 输入: "babad"
 输出: "bab"
 注意: "aba" 也是一个有效答案。
 示例 2：
 
 输入: "cbbd"
 输出: "bb"
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/longest-palindromic-substring
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
