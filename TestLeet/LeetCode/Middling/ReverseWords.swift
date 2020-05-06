//
//  ReverseWords.swift
//  TestLeet
//
//  Created by zhangkk on 2020/4/10.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class ReverseWords: NSObject {
    func reverseWords(_ s: String) -> String {
        return s.split {$0.isWhitespace }.reversed().joined(separator: " ")
        
    }
}
