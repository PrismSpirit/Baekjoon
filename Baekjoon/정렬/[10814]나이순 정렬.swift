//
//  [10814]나이순 정렬.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10814
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!
var memberArr: [(Int, String)] = []

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { String($0)) }
    memberArr.append((Int(input[0]), input[1]))
}

print(memberArr.sorted())
