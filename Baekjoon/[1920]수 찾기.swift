//
//  [1920]수 찾기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1920
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

let n = Int(readLine()!)!
let aArr = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = Int(readLine()!)!
let cardArr = readLine()!.split(separator: " ").map { Int(String($0))! }

var aDict: Dictionary<Int, Int> = [:]

for a in aArr {
    if aDict[a] == nil {
        aDict[a] = 1
    }
}

for card in cardArr {
    aDict[card] != nil ? print(1) : print(0)
}
