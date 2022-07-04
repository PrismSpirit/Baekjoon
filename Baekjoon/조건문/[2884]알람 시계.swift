//
//  [2884]알람 시계.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2884
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var hour = input[0]
var minute = input[1]

minute -= 45

if (minute < 0) {
    hour -= 1
    minute += 60
}

if (hour < 0) {
    hour += 24
}

print("\(hour) \(minute)")
