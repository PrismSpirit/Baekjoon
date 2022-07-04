//
//  [8393]합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/8393
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var n = Int(readLine()!)!
var result = 0

for x in 1...n {
    result += x
}

print(result)
