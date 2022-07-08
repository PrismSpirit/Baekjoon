//
//  [1712]손익분기점.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1712
//
//  Created by Jaehun Lee on 2022/07/08.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

let a = input[0]
let b = input[1]
let c = input[2]

if (b >= c) {
    print(-1)
    exit(0)
}

print(a / (c - b) + 1)
