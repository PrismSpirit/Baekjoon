//
//  [2577]숫자의 개수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2577
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var product = 1
var freqArr: [Int] = Array(repeating: 0, count: 10)

for _ in 0..<3 {
    product *= Int(readLine()!)!
}

while (product != 0) {
    freqArr[product % 10] += 1
    product /= 10
}

for freq in freqArr {
    print(freq)
}
