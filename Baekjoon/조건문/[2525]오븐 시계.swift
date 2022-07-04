//
//  [2525]오븐 시계.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2525
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var hour = input[0]
var minute = input[1]
var durationMinutes = Int(readLine()!)!
var durationHours = 0

durationHours = durationMinutes / 60
durationMinutes %= 60

hour += durationHours
minute += durationMinutes

if (minute > 59) {
    minute -= 60
    hour += 1
}

if (hour > 23) {
    hour -= 24
}

print("\(hour) \(minute)")
