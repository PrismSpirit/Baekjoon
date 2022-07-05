//
//  [1065]한수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1065
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

func isArithmeticSequence(_ n: Int) -> Bool {
    var flag = true
    var d = 0
    let numArr = String(n).map { Int(String($0))! }
    
    for i in 0..<numArr.count - 1 {
        if (i == 0) {
            d = numArr[i] - numArr[i + 1]
        }
        
        if numArr[i] - numArr[i + 1] != d {
            flag = false
        }
    }
    
    return flag
}

let n = Int(readLine()!)!
var count = 0

for x in 1...n {
    if isArithmeticSequence(x) {
        count += 1
    }
}

print(count)
