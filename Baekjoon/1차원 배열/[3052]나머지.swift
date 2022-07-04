//
//  [3052]나머지.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/3052
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var modArr: [Int] = Array(repeating: 0, count: 42)
var count = 0

for _ in 0..<10 {
    modArr[Int(readLine()!)! % 42] += 1
}

for mod in modArr {
    if (mod > 0) {
        count += 1
    }
}

print(count)
