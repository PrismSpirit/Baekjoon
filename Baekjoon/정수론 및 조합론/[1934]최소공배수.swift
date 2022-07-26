//
//  [1934]최소공배수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1934
//
//  Created by Jaehun Lee on 2022/07/26.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if (b == 0) {
        return a
    }
    
    return gcd(b, a % b)
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let a = input[0]
    let b = input[1]
    
    print(a * b / gcd(a, b))
}
