//
//  [2475]검증수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2475
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

var sum = 0

for i in readLine()!.components(separatedBy: " ").map { Int($0)! } {
    sum += i * i
}

print(sum % 10)
