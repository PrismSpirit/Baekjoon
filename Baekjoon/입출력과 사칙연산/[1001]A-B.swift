//
//  [1001]A-B.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1001
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

print(input[0] - input[1])
