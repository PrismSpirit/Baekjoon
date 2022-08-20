//
//  [1932]정수 삼각형.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1932
//
//  Created by Jaehun Lee on 2022/08/20.
//

import Foundation

let n = Int(readLine()!)!

var triangle: [[Int]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    triangle.append(input)
}

for i in 1..<n {
    for j in 0..<i + 1 {
        if j == 0 {
            triangle[i][j] = triangle[i - 1][j] + triangle[i][j]
        } else if j == i {
            triangle[i][j] = triangle[i - 1][j - 1] + triangle[i][j]
        } else {
            triangle[i][j] = max(triangle[i - 1][j - 1], triangle[i - 1][j]) + triangle[i][j]
        }
    }
}

print(triangle[n - 1].max()!)
