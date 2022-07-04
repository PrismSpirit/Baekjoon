//
//  [2562]최댓값.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2562
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var maxval = 0
var idx = 0

for i in 1...9 {
    let input = Int(readLine()!)!
    
    if (input > maxval) {
        maxval = input
        idx = i
    }
}

print("\(maxval) \(idx)")
