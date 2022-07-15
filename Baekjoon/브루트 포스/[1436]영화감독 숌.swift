//
//  [1436]영화감독 숌.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1436
//
//  Created by Jaehun Lee on 2022/07/15.
//

import Foundation

var n = Int(readLine()!)!

var i = 666

while true {
    var count6 = 0
    
    for c in String(i) {
        if c == "6" {
            count6 += 1
        } else {
            count6 = 0
        }
        
        if (count6 == 3) {
            n -= 1
            break
        }
    }
    
    if (n == 0) {
        break
    }
    
    i += 1
}

print(i)
