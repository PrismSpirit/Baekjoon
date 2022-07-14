//
//  [2231]분해합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2231
//
//  Created by Jaehun Lee on 2022/07/14.
//

import Foundation

var n = Int(readLine()!)!

for x in 1...n {
    var sum = x
    let numOfDigits = String(x).map { Int(String($0))! }
    
    for i in numOfDigits {
        sum += i
    }
    
    if sum == n {
        print(x)
        exit(0)
    }
}

print(0)
