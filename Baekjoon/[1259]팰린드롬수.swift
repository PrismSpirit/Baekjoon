//
//  [1259]팰린드롬수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1259
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

while true {
    let s = readLine()!
    
    if (s == "0") {
        break
    }
    
    s == s.reversed() ? print("yes") : print("no")
}
