//
//  [3053]택시 기하학.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/3053
//
//  Created by Jaehun Lee on 2022/07/25.
//

import Foundation

let r = Int(readLine()!)!
let pi = acos(-1.0)

let Euclidian = pi * Double(r) * Double(r)
let Taxicab = 2 * Double(r) * Double(r)

print(String(format: "%.6f", round(Euclidian * 1_000_000) / 1_000_000))
print(String(format: "%.6f", round(Taxicab * 1_000_000) / 1_000_000))
