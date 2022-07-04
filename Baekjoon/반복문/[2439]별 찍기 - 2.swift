//
//  [2439]별 찍기 - 2.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2439
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    for _ in 0..<n - i {
        print(" ", terminator: "")
    }
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print("")
}
