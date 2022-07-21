//
//  [2750]수 정렬하기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2750
//
//  Created by Jaehun Lee on 2022/07/16.
//

import Foundation

func insertionSort(_ numArr: [Int]) -> [Int] {
    var numArr = numArr
    
    for i in 1..<numArr.count {
        var j = i - 1
        let tmp = numArr[i]
        
        while (j >= 0 && numArr[j] > tmp) {
            numArr[j + 1] = numArr[j]
            j -= 1
        }
        
        numArr[j + 1] = tmp
    }
    
    return numArr
}

let n = Int(readLine()!)!
var numArr: [Int] = []

for _ in 0..<n {
    numArr.append(Int(readLine()!)!)
}

for num in insertionSort(numArr) {
    print(num)
}
