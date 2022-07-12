//
//  [9020]골드바흐의 추측.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/9020
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

let t = Int(readLine()!)!
var primeTable: [Bool] = [false, false]
var maxPrime = 0

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    let lenPrimeTable = primeTable.count
    
    if (maxPrime < n - 1) {
        maxPrime = n - 1
        for i in 0..<maxPrime - (lenPrimeTable - 1) {
            if isPrime(lenPrimeTable + i) {
                primeTable.append(true)
            } else {
                primeTable.append(false)
            }
        }
    }
    
    var a = n / 2
    var b = n / 2
    
    while (a != 1) {
        if primeTable[a] && primeTable[b] {
            break
        }
        
        a -= 1
        b += 1
    }
    
    print("\(a) \(b)")
}
