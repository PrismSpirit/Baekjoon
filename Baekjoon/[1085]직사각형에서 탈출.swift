//
//  [1085]직사각형에서 탈출.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1085
//
//  Created by Jaehun Lee on 2022/07/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

let xGap = (x - 0) < (w - x) ? (x - 0) : (w - x)
let yGap = (y - 0) < (h - y) ? (y - 0) : (h - y)

xGap < yGap ? print(xGap) : print(yGap)
