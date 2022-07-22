//
//  [2108]통계학.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2108
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!
var numArr: [Int] = []
var sum = 0
var freqDict: Dictionary<Int, Int> = [:]
var maxval = -4001
var minval = 4000

for _ in 0..<n {
    let input = Int(readLine()!)!
    numArr.append(input)
    sum += input
    if freqDict[input] != nil {
        freqDict[input]! += 1
    } else {
        freqDict[input] = 1
    }
    if (maxval < input) {
        maxval = input
    }
    if (minval > input) {
        minval = input
    }
}

let sortedFreqDict = freqDict.sorted {
    if ($0.1 == $1.1) {
        return $0.0 < $01.0
    }
    return $0.1 > $1.1
}

numArr.sort()

print(Int(round(Double(sum) / Double(n))))
print(numArr[n / 2])

if sortedFreqDict.count > 1 && (sortedFreqDict[0].value == sortedFreqDict[1].value) {
    print(sortedFreqDict[1].key)
} else {
    print(sortedFreqDict[0].key)
}

print(maxval - minval)
