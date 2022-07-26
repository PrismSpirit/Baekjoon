//
//  [5086]배수와 약수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/5086
//
//  Created by Jaehun Lee on 2022/07/26.
//

import Foundation

while true {
    let input = readLine()!
    
    if (input == "0 0") {
        break
    }
    
    let tmp = input.split(separator: " ").map { Int(String($0))! }
    let a = tmp[0]
    let b = tmp[1]
    
    if (a % b == 0) {
        print("multiple")
    } else if (b % a == 0) {
        print("factor")
    } else {
        print("neither")
    }
}
