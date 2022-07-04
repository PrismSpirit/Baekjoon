//
//  [10871]X보다 작은 수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10871
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

let x = readLine()!.components(separatedBy: " ").map { Int($0)! }[1]
let numList = readLine()!.components(separatedBy: " ").map { Int($0)! }

for num in numList {
    if (num < x) {
        print(num, terminator: " ")
    }
}
