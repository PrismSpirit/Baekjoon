//
//  [3009]네 번째 점.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/3009
//
//  Created by Jaehun Lee on 2022/07/25.
//

import Foundation

var xCoord: [Int] = []
var yCoord: [Int] = []
var x = 0
var y = 0

for _ in 0..<3 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    xCoord.append(input[0])
    yCoord.append(input[1])
}

if (xCoord[0] == xCoord[1]) {
    x = xCoord[2]
} else if (xCoord[0] == xCoord[2]) {
    x = xCoord[1]
} else if (xCoord[1] == xCoord[2]) {
    x = xCoord[0]
}

if (yCoord[0] == yCoord[1]) {
    y = yCoord[2]
} else if (yCoord[0] == yCoord[2]) {
    y = yCoord[1]
} else if (yCoord[1] == yCoord[2]) {
    y = yCoord[0]
}

print("\(x) \(y)")
