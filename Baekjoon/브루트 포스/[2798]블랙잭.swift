//
//  [2798]블랙잭.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2798
//
//  Created by Jaehun Lee on 2022/07/13.
//

import Foundation

let m = readLine()!.components(separatedBy: " ").map { Int(String($0))! }[1]
let numArr = readLine()!.components(separatedBy: " ").map { Int(String($0))! }

var maxval = 0

for i in 0..<numArr.count - 2 {
    for j in i + 1..<numArr.count - 1 {
        for k in j + 1..<numArr.count {
            let sum = numArr[i] + numArr[j] + numArr[k]
            if ((sum <= m) && (sum > maxval)) {
                maxval = sum
            }
        }
    }
}

print(maxval)
