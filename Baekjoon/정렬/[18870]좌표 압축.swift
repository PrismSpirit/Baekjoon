//
//  [18870]좌표 압축.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/18870
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!

let numArr = readLine()!.split(separator: " ").map { Int(String($0))! }
var numDict: Dictionary<Int, Int> = [:]
let noDuplicatedSortedNumArr = [Int](Set(numArr)).sorted()
let lenOfNoDuplicated = noDuplicatedSortedNumArr.count

var outputStr = ""

for i in 0..<lenOfNoDuplicated {
    numDict[noDuplicatedSortedNumArr[i]] = i
}

for num in numArr {
    outputStr.write(String(numDict[num]!) + " ")
}

print(outputStr)
