//
//  [9498]시험 성적.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/9498
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = Int(readLine()!)!

if (input >= 90 && input <= 100) {
    print("A")
} else if (input >= 80 && input < 90) {
    print("B")
} else if (input >= 70 && input < 80) {
    print("C")
} else if (input >= 60 && input < 70) {
    print("D")
} else {
    print("F")
}
