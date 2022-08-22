//
//  [2579]계단 오르기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2579
//
//  Created by Jaehun Lee on 2022/08/20.
//

import Foundation

let n = Int(readLine()!)!
var stair: [Int] = []
var dpArr: [Int] = Array(repeating: 0, count: n)

for _ in 0..<n {
    stair.append(Int(readLine()!)!)
}

if (n == 1) {
    print(stair[0])
    exit(0)
} else if (n == 2) {
    print(stair[0] + stair[1])
    exit(0)
}

dpArr[0] = stair[0]
dpArr[1] = stair[0] + stair[1]
dpArr[2] = max(stair[0], stair[1]) + stair[2]

for i in 3..<n {
    dpArr[i] = max(dpArr[i - 2] + stair[i], dpArr[i - 3] + stair[i - 1] + stair[i])
}

print(dpArr[n - 1])
