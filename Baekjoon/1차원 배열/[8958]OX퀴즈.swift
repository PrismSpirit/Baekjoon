//
//  [8958]OX퀴즈.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/8958
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!
    var result = 0
    
    var w = 0
    for c in input {
        if (c == "O") {
            result += (1 + w)
            w += 1
        } else {
            w = 0
        }
    }
    
    print(result)
}
