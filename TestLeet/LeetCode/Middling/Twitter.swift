////
////  Twitter.swift
////  TestLeet
////
////  Created by zhangkk on 2020/4/13.
////  Copyright © 2020 KK. All rights reserved.
////
//
//import UIKit
///**
// 设计一个简化版的推特(Twitter)，可以让用户实现发送推文，关注/取消关注其他用户，能够看见关注人（包括自己）的最近十条推文。你的设计需要支持以下的几个功能：
// 
// postTweet(userId, tweetId): 创建一条新的推文
// getNewsFeed(userId): 检索最近的十条推文。每个推文都必须是由此用户关注的人或者是用户自己发出的。推文必须按照时间顺序由最近的开始排序。
// follow(followerId, followeeId): 关注一个用户
// unfollow(followerId, followeeId): 取消关注一个用户
// 示例:
// 
// Twitter twitter = new Twitter();
// 
// // 用户1发送了一条新推文 (用户id = 1, 推文id = 5).
// twitter.postTweet(1, 5);
// 
// // 用户1的获取推文应当返回一个列表，其中包含一个id为5的推文.
// twitter.getNewsFeed(1);
// 
// // 用户1关注了用户2.
// twitter.follow(1, 2);
// 
// // 用户2发送了一个新推文 (推文id = 6).
// twitter.postTweet(2, 6);
// 
// // 用户1的获取推文应当返回一个列表，其中包含两个推文，id分别为 -> [6, 5].
// // 推文id6应当在推文id5之前，因为它是在5之后发送的.
// twitter.getNewsFeed(1);
// 
// // 用户1取消关注了用户2.
// twitter.unfollow(1, 2);
// 
// // 用户1的获取推文应当返回一个列表，其中包含一个id为5的推文.
// // 因为用户1已经不再关注用户2.
// twitter.getNewsFeed(1);
// 
// 来源：力扣（LeetCode）
// 链接：https://leetcode-cn.com/problems/design-twitter
// 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
// */
//class Twitter: NSObject {
//    struct userStruct {
//        var titles:[Int]
//        var follows:[Int]
//        
//        init(_ title:Array<Int>, _ follow:Array<Int>) {
//            self.titles = title
//            self.follows = follow
//        }
//    }
//    
//    var users:Dictionary<Int,userStruct>
//    var times:Dictionary<Int, Int>
//    var intMax:Int
//    
//    
//    /** Initialize your data structure here. */
//    override init() {
//        self.users = [:]
//        self.times = [:]
//        self.intMax = 10
//        
//        postTweet(1, 6)
//        let ret_1: [Int] = getNewsFeed(1)
//        follow(1, 2)
//        postTweet(2, 7)
//        let ret_2: [Int] = getNewsFeed(1)
//        unfollow(1, 2)
//        let ret_3: [Int] = getNewsFeed(1)
//        print(ret_1,ret_2,ret_3)
//    }
//    
//    /** Compose a new tweet. */
//    func postTweet(_ userId: Int, _ tweetId: Int) {
//        var user = users[userId]
//        if user == nil {
////            var user = userStruct.init()
//        }
//        
//        
//        
//    }
//    
//    /** Retrieve the 10 most recent tweet ids in the user's news feed. Each item in the news feed must be posted by users who the user followed or by the user herself. Tweets must be ordered from most recent to least recent. */
//    func getNewsFeed(_ userId: Int) -> [Int] {
//        var twitter = [Int]()
////        let user = dic[userId]
//        if user != nil {
//            for (n, c) in user!.titles.enumerated() {
//                twitter.append(c)
//            }
//            for (n1, c1) in user!.follows.enumerated() {
//                var follow = dic[c1]
//                if follow?.titles != nil {
//                    for i in 0..<follow!.titles.count {
//                        twitter.append((follow?.titles[i])!)
//                    }
//                }
//          
//            }
//        }
//        
//        return twitter
//    }
//    
//    /** Follower follows a followee. If the operation is invalid, it should be a no-op. */
//    func follow(_ followerId: Int, _ followeeId: Int) {
//        dic[followerId]?.follows.append(followeeId)
//        
//        var followeeUser = self.dic[followeeId]
//        if followeeUser == nil {
//            self.dic[followeeId] = userStruct.init(followeeId, [], [])
//        }
//    }
//    
//    /** Follower unfollows a followee. If the operation is invalid, it should be a no-op. */
//    func unfollow(_ followerId: Int, _ followeeId: Int) {
//        var followerUser = dic[followerId]
//        var follows = followerUser?.follows ?? []
//        
//        for i in 0..<follows.count {
//            if followerUser?.follows[i] == followeeId {
//                followerUser?.follows.remove(at: i)
//                self.dic.removeValue(forKey: followeeId)
//                break
//            }
//        }
//    }
//}
//
///**
// * Your Twitter object will be instantiated and called as such:
// * let obj = Twitter()
// * obj.postTweet(userId, tweetId)
// * let ret_2: [Int] = obj.getNewsFeed(userId)
// * obj.follow(followerId, followeeId)
// * obj.unfollow(followerId, followeeId)
// */
