//
//  [1978]소수 찾기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1978
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

let _ = Int(readLine()!)!
let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
var result = 0

for i in input {
    if isPrime(i) {
        result += 1
    }
}

print(result)
