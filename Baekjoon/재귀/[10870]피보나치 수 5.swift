//
//  [10870]피보나치 수 5.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10870
//
//  Created by Jaehun Lee on 2022/07/12.
//

import Foundation

func fib(_ n: Int) -> Int {
    if (n == 0) {
        return 0
    } else if (n == 1) {
        return 1
    }
    
    return fib(n - 2) + fib(n - 1)
}

let n = Int(readLine()!)!

print(fib(n))
