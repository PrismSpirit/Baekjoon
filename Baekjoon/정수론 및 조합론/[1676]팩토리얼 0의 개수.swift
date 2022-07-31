//
//  [1676]팩토리얼 0의 개수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1676
//
//  Created by Jaehun Lee on 2022/07/29.
//

import Foundation

let n = Int(readLine()!)!

if (n == 0) {
    print(0)
    exit(0)
}

var count_2 = 0
var count_5 = 0

for i in 1...n {
    var num = i
    
    while (num % 2 == 0) {
        num /= 2
        count_2 += 1
    }
    
    while (num % 5 == 0) {
        num /= 5
        count_5 += 1
    }
}

print(count_2 < count_5 ? count_2 : count_5)
