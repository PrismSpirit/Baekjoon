//
//  [2438]별 찍기 - 1.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2438
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print("")
}
