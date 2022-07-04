//
//  [1546]평균.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1546
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").map { Int(String($0))! }
var sum: Double = 0.0

let maxval = scores.max()!

for score in scores {
    sum += Double(score) / Double(maxval) * 100
}

print(sum / Double(n))
