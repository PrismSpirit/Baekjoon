//
//  [1110]더하기 사이클.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1110
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let n = Int(readLine()!)!
var copyOfn = n
var count = 0

while true {
    let newN = (copyOfn < 10) ? ((copyOfn * 10) / 10) + ((copyOfn * 10) % 10) : (copyOfn / 10) + (copyOfn % 10)
    
    copyOfn = (copyOfn % 10) * 10 + (newN % 10)
    
    count += 1
    
    if (copyOfn == n) {
        break
    }
}

print(count)
