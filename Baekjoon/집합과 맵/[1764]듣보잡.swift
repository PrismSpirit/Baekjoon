//
//  [1764]듣보잡.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1764
//
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var dDict: Dictionary<String, Int> = [:]
var dbArr: [String] = []

for _ in 0..<n {
    let d = readLine()!
    
    if dDict[d] == nil {
        dDict[d] = 1
    }
}

for _ in 0..<m {
    let b = readLine()!
    
    if dDict[b] == 1 {
        dbArr.append(b)
    }
}

print(dbArr.count)

for db in dbArr.sorted() {
    print(db)
}
