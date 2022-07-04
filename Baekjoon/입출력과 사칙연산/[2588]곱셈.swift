//
//  [2588]곱셈.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2588
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var a = Int(readLine()!)!
var bList = readLine()!.map { Int(String($0))! }
var result = 0

for i in (0..<bList.count).reversed() {
    print(a * bList[i])
    result += a * bList[i] * Int(pow(Double(10), Double(bList.count - (i + 1))))
}

print(result)
