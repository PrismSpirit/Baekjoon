//
//  [1157]단어 공부.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1157
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

var s = readLine()!.uppercased()
var freqArr: [Int] = Array(repeating: 0, count: 26)

for c in s {
    freqArr[Int(Character(String(c)).asciiValue!) - 65] += 1
}

var maxfreq = -1
var idx = 0
var isUnknown = false
for i in 0..<freqArr.count {
    if maxfreq < freqArr[i] {
        maxfreq = freqArr[i]
        idx = i
        isUnknown = false
    } else if (maxfreq == freqArr[i]) {
        isUnknown = true
    }
}

print(isUnknown ? "?" : Character(UnicodeScalar(idx + 65)!))
