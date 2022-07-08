//
//  [2869]달팽이는 올라가고 싶다.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2869
//
//  Created by Jaehun Lee on 2022/07/08.
//

import Foundation

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

let a = input[0]
let b = input[1]
let v = input[2]

print((v - b - 1) / (a - b) + 1)
