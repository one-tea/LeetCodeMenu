//
//  Fibonacci.swift
//  TestLeet
//
//  Created by zhangkk on 2020/7/25.
//  Copyright © 2020 KK. All rights reserved.
//

import Foundation

class Fibonacci: NSObject {
    override init() {
        super.init()
        print(fib(4))
    }
    
    func fib(_ N: Int) -> Int {
           if N == 0 {return 0}
           if N == 1 {return 1}

           var one = 0
           var two = 1
           
           var sum = 0
           for _ in 2...N {
               sum = one + two
               one = two
               two = sum
           }
           
           return sum
       }
}

/**
 求斐波那契数列第N项
 */
