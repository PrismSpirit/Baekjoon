//
//  [14425]문자열 집합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/14425
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var setS: Dictionary<String, Int> = [:]
var count = 0

for _ in 0..<n {
    let inputStr = readLine()!
    
    if setS[inputStr] == nil {
        setS[inputStr] = 1
    }
}

for _ in 0..<m {
    let inputStr = readLine()!
    
    if setS[inputStr] != nil {
        count += 1
    }
}

print(count)
