//
//  [11051]이항 계수 2.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11051
//
//  Created by Jaehun Lee on 2022/07/28.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
var k = input[1]

if k > n - k {
    k = n - k
}

var combArr: [[Int]] = Array(repeating: Array(repeating: 1, count: 1001), count: 1001)

if n > 1 {
    for i in 2...n {
        for j in 1..<i {
            combArr[i][j] = (combArr[i - 1][j] + combArr[i - 1][j - 1]) % 10007
        }
    }
}

print(combArr[n][k])
