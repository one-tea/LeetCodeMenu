//
//  myAtoi.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/3.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class myAtoi: NSObject {
    override init() {
        super.init()
        let str = "2147483648"
        
        print(myAtoi(str))
    }
    
    func myAtoi(_ str: String) -> Int {
        if str.count == 0 {
            return 0
        }
        var index = 0
        var res = 0
        var isHasPlus = false

        while index < str.count && str[str.index(str.startIndex, offsetBy: index)] == " " {
            index += 1
        }
        if index < str.count && str[str.index(str.startIndex, offsetBy: index)] == "-" {
            isHasPlus = true
        }
        if index < str.count && (str[str.index(str.startIndex, offsetBy: index)] == "-" || str[str.index(str.startIndex, offsetBy: index)] == "+") {
            index += 1
        }
        while isNumber(str, index){
            let num = Int(String(str[str.index(str.startIndex, offsetBy: index)]))!
            if res > Int32.max/10 || (res == Int32.max/10 && num > 7) {
                return isHasPlus ? Int(Int32.min) : Int(Int32.max)
            }
            res = res * 10 + num
            index += 1
        }
    
        return isHasPlus ? -res : res
    }
    
    func isNumber(_ str:String, _ index:Int) -> Bool {
        if index >= str.count {
            return false
        }
        let char:Character = str[str.index(str.startIndex, offsetBy: index)]
        return char.isNumber
    }
}

