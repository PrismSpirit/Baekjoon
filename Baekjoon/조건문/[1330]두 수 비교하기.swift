//
//  [1330]두 수 비교하기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1330
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }

if (input[0] > input[1]) {
    print(">")
} else if (input[0] < input[1]) {
    print("<")
} else {
    print("==")
}
