//
//  [25304]영수증.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/25304
//
//  Created by Jaehun Lee on 2022/08/14.
//

import Foundation

let x = Int(readLine()!)!
let n = Int(readLine()!)!

var sum = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    sum += input[0] * input[1]
}

print(sum == x ? "Yes" : "No")
