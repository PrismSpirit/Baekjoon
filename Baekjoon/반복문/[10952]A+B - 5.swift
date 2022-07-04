//
//  [10952]A+B - 5.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10952
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

while true {
    let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    if (input[0] == 0 && input[1] == 0) {
        break
    }
    
    print(input[0] + input[1])
}
