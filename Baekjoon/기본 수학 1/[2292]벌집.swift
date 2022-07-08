//
//  [2292]벌집.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2292
//
//  Created by Jaehun Lee on 2022/07/08.
//

import Foundation

var n = Int(readLine()!)!

if (n == 1) {
    print(1)
    exit(0)
}

n -= 1

var multiplier = 6
var i = 1

while n > 0 {
    n -= multiplier
    i += 1
    multiplier += 6
}

print(i)
