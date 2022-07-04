//
//  [10950]A+B - 3.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10950
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var n = Int(readLine()!)!

for _ in 0..<n {
    var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    print(input[0] + input[1])
}
