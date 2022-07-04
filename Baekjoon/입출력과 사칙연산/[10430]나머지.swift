//
//  [10430]나머지.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10430
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

let a = input[0], b = input[1], c = input[2]

print((a + b) % c)
print(((a % c) + (b % c)) % c)
print((a * b) % c)
print(((a % c) * (b % c)) % c)
