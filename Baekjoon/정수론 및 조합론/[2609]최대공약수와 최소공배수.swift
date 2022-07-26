//
//  [2609]최대공약수와 최소공배수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2609
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

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]
let gcdOfAandB = gcd(a, b)

print(gcdOfAandB)
print(a * b / gcdOfAandB)
