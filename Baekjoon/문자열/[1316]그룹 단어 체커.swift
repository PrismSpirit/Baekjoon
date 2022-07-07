//
//  [1316]그룹 단어 체커.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1316
//
//  Created by Jaehun Lee on 2022/07/08.
//

import Foundation

let n = Int(readLine()!)!
var count = 0

for _ in 0..<n {
    var escFlag = false
    var alphabetDict: Dictionary<String, Int> = [:]
    
    let s = readLine()!
    
    var prev: String? = nil
    for c in s {
        if prev == String(c) {
            alphabetDict[String(c)]! += 1
        } else if alphabetDict[String(c)] == nil {
            alphabetDict[String(c)] = 1
        } else {
            escFlag = true
            break
        }
        prev = String(c)
    }
    
    if escFlag {
        continue
    }
    
    count += 1
}

print(count)
