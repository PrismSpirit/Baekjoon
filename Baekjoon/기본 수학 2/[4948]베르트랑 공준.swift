//
//  [4948]베르트랑 공준.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/4948
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

while true {
    let n = Int(readLine()!)!
    
    if (n == 0) {
        break
    }
    
    var count = 0
    
    for i in n + 1...n * 2 {
        if isPrime(i) {
            count += 1
        }
    }
    
    print(count)
}
