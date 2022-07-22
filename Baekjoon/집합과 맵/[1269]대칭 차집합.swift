//
//  [1269]대칭 차집합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1269
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var aDict: Dictionary<Int, Int> = [:]

let aArr = readLine()!.split(separator: " ").map { Int(String($0))! }
let bArr = readLine()!.split(separator: " ").map { Int(String($0))! }
var interSectionNum = 0

for a in aArr {
    if aDict[a] == nil {
        aDict[a] = 1
    }
}

for b in bArr {
    if aDict[b] == 1 {
        interSectionNum += 1
    }
}

print(n + m - interSectionNum * 2)
