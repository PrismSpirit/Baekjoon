//
//  [9461]파도반 수열.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/9461
//
//  Created by Jaehun Lee on 2022/08/18.
//

import Foundation

let t = Int(readLine()!)!

var pArr: [Int] = Array(repeating: 1, count: 101)

for i in 0..<97 {
    pArr[i + 4] = pArr[i + 1] + pArr[i + 2]
}

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    if (n == 1 || n == 2 || n == 3) {
        print(pArr[n])
        continue
    }
    
    print(pArr[n])
}
