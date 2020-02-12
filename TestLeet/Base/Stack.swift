//
//  Stack.swift
//  TestLeet
//
//  Created by zhangkk on 2019/10/21.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit

class Stack: NSObject {
    var map = NSMutableArray.init(capacity: 0)
    
    func push(_ obj: Any?) -> Bool {
        guard let item = obj else {
            return false
        }
        map.add(item)
        return true
    }
    
    func pop() -> Any? {
        if map.count > 0 {
            map.removeLastObject()
            return map.lastObject
        }
        return nil
    }
    
    func top() -> Any? {
        return map.lastObject
    }
}
