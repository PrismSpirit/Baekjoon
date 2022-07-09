//
//  [10250]ACM 호텔.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10250
//
//  Created by Jaehun Lee on 2022/07/09.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    let h = input[0]
    let w = input[1]
    let l = input[2]
    
    if (l % h != 0) {
        if ((l / h + 1) / 10 == 0) {
            print("\(l % h)0\(l / h + 1)")
        } else {
            print("\(l % h)\(l / h + 1)")
        }
    } else {
        if ((l / h) / 10 == 0) {
            print("\(h)0\(l / h)")
        } else {
            print("\(h)\(l / h)")
        }
    }
}
