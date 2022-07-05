//
//  [4344]평균은 넘겠지.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/4344
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    var avg: Double = 0
    var count: Double = 0
    
    for i in 1...input[0] {
        avg += Double(input[i])
    }
    
    avg /= Double(input[0])
    
    for i in 1...input[0] {
        if (Double(input[i]) > avg) {
            count += 1
        }
    }
    
    print("\(String(format: "%.3f", round(count / Double(input[0]) * 100000) / 100000 * 100))%")
}
