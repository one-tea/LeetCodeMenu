//
//  IsAnagram.swift
//  TestLeet
//
//  Created by zhangkk on 8/2/20.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class IsAnagram: NSObject {
    override init() {
        super.init()
       print(isAnagram("aa", "a"))
    }
//    // 方法一
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        return s.sorted() == t.sorted()
//    }
    // 方法二
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var smap:[Character:Int] = [:]
        var tmap:[Character:Int] = [:]
        for i in s.indices {
            smap[s[i]] = (smap[s[i]] ?? 0) + 1
        }
        for i in t.indices {
            tmap[t[i]] = (tmap[t[i]] ?? 0)  + 1
        }
        return smap == tmap
       }
}
/**
 给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。

 示例 1:

 输入: s = "anagram", t = "nagaram"
 输出: true
 示例 2:

 输入: s = "rat", t = "car"
 输出: false
 说明:
 你可以假设字符串只包含小写字母。

 进阶:
 如果输入字符串包含 unicode 字符怎么办？你能否调整你的解法来应对这种情况？

 通过次数121,494提交次数199,972

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/valid-anagram
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
