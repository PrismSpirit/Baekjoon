//
//  [3003]킹, 퀸, 룩, 비숍, 나이트, 폰.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/3003
//
//  Created by Jaehun Lee on 2022/08/14.
//

import Foundation

let inputPiece = readLine()!.split(separator: " ").map { Int(String($0))! }
let originalPiece: [Int] = [1, 1, 2, 2, 2, 8]

for i in 0..<originalPiece.count {
    print(originalPiece[i] - inputPiece[i], terminator: " ")
}
print("")
