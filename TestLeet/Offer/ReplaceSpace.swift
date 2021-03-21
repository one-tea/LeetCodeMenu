//
//  ReplaceSpace.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/19.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit
/*
 将空格替换成%20
 */
class ReplaceSpace: NSObject {
    override init() {
        super.init()
       print(replace("We are happly "))
    }
    
    func replace(_ string:String?) -> String? {
        guard var str = string else {
            return string
        }
        while str.contains(" ") {
            if let rang = str.range(of: " ") {
                str.replaceSubrange(rang, with: "%20")
            }
        }
        return str
        
    }
}
