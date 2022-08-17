//
//  [1904]01타일.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1904
//
//  Created by Jaehun Lee on 2022/08/17.
//

import Foundation

let n = Int(readLine()!)!

var zerooneTile: [Int] = Array(repeating: 0, count: n + 1)

if (n == 1 || n == 2) {
    print(n)
    exit(0)
}

zerooneTile[1] = 1
zerooneTile[2] = 2

for i in 0..<n - 2 {
    zerooneTile[i + 3] = (zerooneTile[i + 1] + zerooneTile[i + 2]) % 15746
}

print(zerooneTile[n])
