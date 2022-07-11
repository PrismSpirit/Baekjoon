//
//  [1929]소수 구하기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1929
//
//  Created by Jaehun Lee on 2022/07/11.
//

import Foundation

func isPrime(_ n: Int) -> Bool {
    if n == 1 {
        return false
    }
    
    for d in 2..<Int(sqrt(Double(n))) + 1 {
        if (n % d == 0) {
            return false
        }
    }
    
    return true
}

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let m = input[0]
let n = input[1]

for i in m...n {
    if isPrime(i) {
        print(i)
    }
}
