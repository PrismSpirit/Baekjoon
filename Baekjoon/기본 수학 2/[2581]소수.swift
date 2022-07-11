//
//  [2581]소수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2581
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

let m = Int(readLine()!)!
let n = Int(readLine()!)!
var sum = 0
var minPrime = n

for i in m...n {
    if isPrime(i) {
        if i < minPrime {
            minPrime = i
        }
        sum += i
    }
}

if sum != 0 {
    print(sum)
    print(minPrime)
} else {
    print(-1)
}
