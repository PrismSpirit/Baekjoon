//
//  [2908]상수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2908
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

let input = readLine()!.components(separatedBy: " ")
let reversedA = Int(String(input[0].reversed()))!
let reversedB = Int(String(input[1].reversed()))!

print(reversedA < reversedB ? reversedB : reversedA)
