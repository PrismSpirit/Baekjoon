//
//  [1149]RGB거리.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1149
//
//  Created by Jaehun Lee on 2022/08/19.
//

import Foundation

let n = Int(readLine()!)!
var dpArr: [[Int]] = Array(repeating: Array(repeating: 0, count: 3), count: n + 1)

for i in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }

    dpArr[i + 1][0] = min(dpArr[i][1] , dpArr[i][2]) + input[0]
    dpArr[i + 1][1] = min(dpArr[i][0] , dpArr[i][2]) + input[1]
    dpArr[i + 1][2] = min(dpArr[i][0] , dpArr[i][1]) + input[2]
}

print(min(dpArr[n][0], dpArr[n][1], dpArr[n][2]))
