//
//  [10815]숫자 카드.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10815
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!
let digitOfCards = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let ownCards = readLine()!.split(separator: " ").map { Int(String($0))! }

var cardDict: Dictionary<Int, Int> = [:]
var outputStr = ""

for card in digitOfCards {
    if cardDict[card] == nil {
        cardDict[card] = 1
    }
}

for card in ownCards {
    if cardDict[card] != nil {
        outputStr.write("1 ")
    } else {
        outputStr.write("0 ")
    }
}

print(outputStr)
