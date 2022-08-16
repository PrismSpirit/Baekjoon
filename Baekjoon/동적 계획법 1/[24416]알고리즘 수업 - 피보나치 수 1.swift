//
//  [24416]알고리즘 수업 - 피보나치 수 1.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/24416
//
//  Created by Jaehun Lee on 2022/08/16.
//

import Foundation

let n = Int(readLine()!)!

var countArr: [Int] = Array(repeating: 0, count: 41)

countArr[5] = 5
countArr[6] = 8

if n == 5 || n == 6 {
    print("\(countArr[n]) \(n - 2)")
    exit(0)
}

for i in 0..<n - 6 {
    countArr[i + 7] = countArr[i + 6] + countArr[i + 5]
}

print("\(countArr[n]) \(n - 2)")
