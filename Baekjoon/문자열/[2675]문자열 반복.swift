//
//  [2675]문자열 반복.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2675
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    let times = Int(input[0])!
    let s = String(input[1])
    
    for c in s {
        for _ in 0..<times {
            print(c, terminator: "")
        }
    }
    
    print("")
}
