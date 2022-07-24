//
//  [1003]피보나치 함수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1003
//
//  Created by Jaehun Lee on 2022/07/24.
//

import Foundation

let t = Int(readLine()!)!

var fibArr: [Int] = [0, 1]
var lenOfFibArr = fibArr.count

for _ in 0..<t {
    let n = Int(readLine()!)!
    
    if (n > lenOfFibArr - 1) {
        for _ in 0..<n - (lenOfFibArr - 1) {
            fibArr.append(fibArr[lenOfFibArr - 1] + fibArr[lenOfFibArr - 2])
            lenOfFibArr += 1
        }
    }
    
    if (n == 0) {
        print("1 0")
    } else {
        print("\(fibArr[n - 1]) \(fibArr[n])")
    }
}
