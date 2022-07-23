//
//  [11866]요세푸스 문제 0.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11866
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var idx = k - 1
var numArr = [Int](1...n)
var result: [Int] = []

var outputStr = ""

while !numArr.isEmpty {
    let lenOfNumArr = numArr.count
    
    while (idx > lenOfNumArr - 1) {
        idx -= lenOfNumArr
    }
    
    result.append(numArr.remove(at: idx))
    idx += (k - 1)
}

outputStr.write("<")

for i in 0..<n {
    if (i < n - 1) {
        outputStr.write(String(result[i]) + ", ")
    } else {
        outputStr.write(String(result[i]) + ">")
    }
}

print(outputStr)
