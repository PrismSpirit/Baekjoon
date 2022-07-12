//
//  [10872]팩토리얼.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10872
//
//  Created by Jaehun Lee on 2022/07/12.
//

import Foundation

func factorial(_ n: Int) -> Int {
    if (n == 1) {
        return 1
    }
    
    return n * factorial(n - 1)
}

let n = Int(readLine()!)!

if (n == 0) {
    print(1)
    exit(0)
}

print(factorial(n))
