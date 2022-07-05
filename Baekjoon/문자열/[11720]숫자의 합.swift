//
//  [11720]숫자의 합.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11720
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

let _ = readLine()!
let numArr = readLine()!.map { Int(String($0))! }
var result = 0

for num in numArr {
    result += num
}

print(result)
