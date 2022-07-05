//
//  [4673]셀프 넘버.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/4673
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

func d(_ n: Int) -> Int{
    var tmp = n
    var result = n
    
    while (tmp > 0) {
        result += tmp % 10
        tmp /= 10
    }
    
    return result
}

var freqArr: [Int] = Array(repeating: 0, count: 10000)

for x in 1..<10000 {
    let dOfn = d(x)
    if (dOfn <= 10000) {
        freqArr[dOfn - 1] += 1
    }
}

for i in 0..<freqArr.count {
    if (freqArr[i] == 0) {
        print(i + 1)
    }
}
