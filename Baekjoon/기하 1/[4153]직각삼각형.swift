//
//  [4153]직각삼각형.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/4153
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

while true {
    let input = readLine()!
    
    if (input == "0 0 0") {
        break
    }
    
    let tri = input.map { Int(String($0))! }.sort
    
    if (tri[2] * tri[2] = tri[0] * tri[0] + tri[1] * tri[1]) {
        print("right")
    } else {
        print("wrong")
    }
}
