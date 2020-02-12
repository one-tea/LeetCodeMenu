//
//  CheckParenthesisRules.swift
//  TestLeet
//
//  Created by zhangkk on 2019/10/21.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack:[String] = []
        
        for index in s.indices {
            let char = s[index]
            if  char == "{" || char == "}" || char == "(" || char == ")" || char == "[" || char == "]" {
                if stack.last == "{", char == "}" {
                    stack.removeLast()
                } else if stack.last == "[", char == "]" {
                    stack.removeLast()
                } else if stack.last == "(", char == ")" {
                    stack.removeLast()
                } else {
                    stack.append("\(char)")
                }
            }
        }
        if stack.count == 0 {
            return true
        } else {
            return false
        }
    }
}

