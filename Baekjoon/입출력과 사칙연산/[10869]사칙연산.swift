//
//  [10869]사칙연산.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10869
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

print(input[0] + input[1])
print(input[0] - input[1])
print(input[0] * input[1])
print(input[0] / input[1])
print(input[0] % input[1])
