//
//  [9184]신나는 함수 실행.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/9184
//
//  Created by Jaehun Lee on 2022/08/16.
//

import Foundation

var wArr: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 1, count: 21), count: 21), count: 21)

func w(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if (a <= 0 || b <= 0 || c <= 0) {
        return 1
    }
    
    for i in 1...20 {
        for j in 1...20 {
            for k in 1...20 {
                if (i < j && j < k) {
                    wArr[i][j][k] = wArr[i][j][k - 1] + wArr[i][j - 1][k - 1] - wArr[i][j - 1][k]
                } else {
                    wArr[i][j][k] = wArr[i - 1][j][k] + wArr[i - 1][j - 1][k] + wArr[i - 1][j][k - 1] - wArr[i - 1][j - 1][k - 1]
                }
            }
        }
    }
    
    if (a > 20 || b > 20 || c > 20) {
        return wArr[20][20][20]
    }
    
    return wArr[a][b][c]
}

while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    if a == -1 && b == -1 && c == -1 {
        break
    }
    
    print("w(\(a), \(b), \(c)) = \(w(a, b, c))")
}
