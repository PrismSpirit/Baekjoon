//
//  [11022]A+B - 8.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11022
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    print("Case #\(i): \(input[0]) + \(input[1]) = \(input[0] + input[1])")
}
