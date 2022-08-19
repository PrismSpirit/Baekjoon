//
//  [1912]연속합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1912
//
//  Created by Jaehun Lee on 2022/08/18.
//

import Foundation

let n = Int(readLine()!)!
var numArr = readLine()!.split(separator: " ").map { Int(String($0))! }

for i in 1..<n {
    numArr[i] = numArr[i] < numArr[i] + numArr[i - 1] ? numArr[i] + numArr[i - 1] : numArr[i]
}

print(numArr.max()!)
