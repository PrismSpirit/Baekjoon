//
//  [3036]링.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/3036
//
//  Created by Jaehun Lee on 2022/07/27.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if (b == 0) {
        return a
    }
    
    return gcd(b, a % b)
}

let n = Int(readLine()!)!

let rings = readLine()!.split(separator: " ").map { Int(String($0))! }

for i in 1..<n {
    let gcdVal = gcd(rings[0], rings[i])
    
    print("\(rings[0] / gcdVal)/\(rings[i] / gcdVal)")
}
