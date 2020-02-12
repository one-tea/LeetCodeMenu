//
//  NumJewelsInStones.swift
//  TestLeet
//
//  Created by zhangkk on 2020/2/11.
//  Copyright © 2020 KK. All rights reserved.
//

import UIKit

class NumJewelsInStones: NSObject {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var set: Set<Character> = Set(J)
        var stones = 0
    
        for index in S.indices {
            if set.contains(S[index]) {
                stones += 1
            }
        }
        return stones
    }
}
