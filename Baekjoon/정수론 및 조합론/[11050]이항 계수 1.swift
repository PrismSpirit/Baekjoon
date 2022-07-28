//
//  [11050]이항 계수 1.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11050
//
//  Created by Jaehun Lee on 2022/07/27.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
var k = input[1]
var result = 1

if n - k < k {
    k = n - k
}

for i in 0..<k {
    result *= n - i
    result /= (i + 1)
}

print(result)
