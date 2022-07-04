//
//  [10818]최소, 최대.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10818
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var maxval = -1_000_000
var minval = 1_000_000
let _ = readLine()
let numList = readLine()!.split(separator: " ").map{ Int(String($0))! }

for num in numList {
    if (num < minval) {
        minval = num
    }
    if (num > maxval) {
        maxval = num
    }
}

print("\(minval) \(maxval)")
