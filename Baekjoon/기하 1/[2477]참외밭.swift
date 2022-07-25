//
//  [2477]참외밭.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2477
//
//  Created by Jaehun Lee on 2022/07/25.
//

import Foundation

let k = Int(readLine()!)!
var sides: [(Int, Int)] = []
var rotateCounter: [Int] = Array(repeating: 0, count: 5)

for _ in 0..<6 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let direction = input[0]
    let length = input[1]
    
    rotateCounter[direction] += 1
    sides.append((direction, length))
}

if (rotateCounter[1] == 2 && rotateCounter[3] == 2) {
    while (sides[0].0 != 4) {
        sides.append(sides.removeFirst())
    }
} else if (rotateCounter[2] == 2 && rotateCounter[4] == 2) {
    while (sides[0].0 != 3) {
        sides.append(sides.removeFirst())
    }
} else if (rotateCounter[1] == 2 && rotateCounter[4] == 2) {
    while (sides[0].0 != 2) {
        sides.append(sides.removeFirst())
    }
} else if (rotateCounter[2] == 2 && rotateCounter[3] == 2) {
    while (sides[0].0 != 1) {
        sides.append(sides.removeFirst())
    }
}

print(((sides[0].1 * sides[1].1) - (sides[3].1 * sides[4].1)) * k)
