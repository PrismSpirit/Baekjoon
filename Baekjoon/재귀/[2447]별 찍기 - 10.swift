//
//  [2447]별 찍기 - 10.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2447
//
//  Created by Jaehun Lee on 2022/07/12.
//

import Foundation

func recStar(_ n: Int) -> [String] {
    if (n == 1) {
        return ["*"]
    }
    
    let stars = recStar(n / 3)
    var starArr: [String] = []
    
    for star in stars {
        starArr.append(String(repeating: star, count: 3))
    }
    for star in stars {
        starArr.append(star + String(repeating: " ", count: n / 3) + star)
    }
    for star in stars {
        starArr.append(String(repeating: star, count: 3))
    }
    
    return starArr
}

let n = Int(readLine()!)!

print(recStar(n).joined(separator: "\n"))
