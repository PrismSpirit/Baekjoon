//
//  [7568]덩치.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/7568
//
//  Created by Jaehun Lee on 2022/07/14.
//

import Foundation

let n = Int(readLine()!)!
var whList: [[Int]] = []

for x in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    let w = input[0]
    let h = input[1]
    
    if (x == 0) {
        whList.append([w, h, 1])
    } else {
        var rank = 1
        
        for i in 0..<whList.count {
            if (w > whList[i][0] && h > whList[i][1]) {
                whList[i][2] += 1
            }
            if (w < whList[i][0] && h < whList[i][1]) {
                rank += 1
            }
        }
        
        whList.append([w, h, rank])
    }
}

for wh in whList {
    print(wh[2], terminator: " ")
}
print("")
