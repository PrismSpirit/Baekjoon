//
//  [1181]단어 정렬.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1181
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!
var wordDict: Dictionary<String, Int> = [:]

for _ in 0..<n {
    let input = readLine()!
    
    if (wordDict[input]) == nil {
        wordDict[input] = 1
    }
}

let sortedWordDict = wordDict.sorted {
    if ($0.0.count == $1.0.count) {
        return $0.0 < $1.0
    }
    return $0.0.count < $1.0.count
}

for word in sortedWordDict {
    print(word.key)
}
