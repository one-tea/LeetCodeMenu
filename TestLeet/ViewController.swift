//
//  ViewController.swift
//  TestLeet
//
//  Created by zhangkk on 2019/8/6.
//  Copyright © 2019 KK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(button())
    }
    
    func button() -> UIButton {
        let button = UIButton.init(frame: CGRect.init(x: UIScreen.main.bounds.size.width/2-50, y: UIScreen.main.bounds.size.height/2-200, width: 100, height: 80))
        button.setTitle("测试按钮", for: .normal)
        button.addTarget(self, action: #selector(testClick), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        button.setTitleColor(UIColor.white, for: .normal)
        return button;
    }
    
    @objc func testClick() -> Void {
        /*
         let solution = Solution()
         let isVerifi = solution.isValid("({}})")
         print(isVerifi)
         
         let print = ClockwisePrintingMatrix()
         let nums = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
         print.printingMartrix(nums, 3, 4)
         // 二分搜索
         let binaryS = BinarySearch()
         let nums = [0,1,2,3,4,5,6,7,8,9];
         let value = binaryS.binarySearch(list: nums, item: 8)
         print("坐标：\(String(describing: value.index)), 步数：\(String(describing: value.num))")
         */
        // 排序
//        var nums:Array<Any> = [2,4,30,1,9]
        
        //        let arr = SectionSort().sectionSort(nums)
        //        print(arr)
        
//        SectionSort().QuickSort(&nums, 0, nums.count-1)
//        print(nums)
//        let arr = SectionSort().QuickSortOther(nums)
//        print(arr)
        
//        let calculateStep = CalculateMinusToZeroSteps()
//        let step = calculateStep.numberOfSteps(14)
//        print(step)
        
//        let decompress = DecompressRLElist()
//        let v = decompress.decompressRLElist([1,2,3,4])
//        print(v)
        
//        let v =  FindNumbers().findNumbers([555,901,482,1771])
//        print(v)
        
//        AddTwoNumbers.init()
//        Massage.init()
//        HasGroupsSizeX.init()
//        LastRemaining.init()
//        GameOfLife.init()
//          myAtoi.init()
//        MaxProfit.init()
//        ClimbStairs.init()
//        ConvertBST.init()
//        DiameterOfBinaryTree.init()
//        FindDisappearedNumbers.init()
//        Rotate.init()
//        MovingCount.init()
////        Twitter.init()
//        AddTwoNumbersII.init()
//        FindKthLargest.init()
//        Merge.init()
//        MaxProfitII.init()
//        CanJump.init()
//        MaxArea.init()
//        ThreeSum.init()
//        ThreeSumClosest.init()
//        KthSmallest.init()
//        DetectCycleII.init()
//        LongestCommonPrefix.init()
//        LongestPalindrome.init()
//        SingleNumbers.init()
//        LowestCommonAncestor.init()
//        IsHappy.init()
//        TwoSum.init()
//        IsAnagram.init()
        LengthOfLongestSubstring.init()
        
    }
}

