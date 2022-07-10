//
//  [2775]부녀회장이 될테야.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2775
//
//  Created by Jaehun Lee on 2022/07/10.
//

import Foundation

let t = Int(readLine()!)!

var room: [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)

room[0] = [Int](0...14)

for f in 1...14 {
    for rn in 1...14 {
        var tmp = 0
        for x in 1...rn {
            tmp += room[f - 1][x]
        }
        room[f][rn] = tmp
    }
}

for _ in 0..<t {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    
    print(room[k][n])
}
