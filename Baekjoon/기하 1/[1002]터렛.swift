//
//  [1002]터렛.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1002
//
//  Created by Jaehun Lee on 2022/07/25.
//

import Foundation

func distance(x1: Int, y1: Int, x2: Int, y2: Int) -> Double {
    return sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x1 = input[0]
    let y1 = input[1]
    let r1 = input[2]
    let x2 = input[3]
    let y2 = input[4]
    let r2 = input[5]
    
    if (x1 == x2) && (y1 == y2) && (r1 == r2) {
        print(-1)
    } else {
        let d = distance(x1: x1, y1: y1, x2: x2, y2: y2)
        let sumOfr = Double(r1 + r2)
        
        if (d == sumOfr) {
            print(1)
        } else if (d > sumofr) {
            print(0)
        } else {
            print(2)
        }
    }
}
