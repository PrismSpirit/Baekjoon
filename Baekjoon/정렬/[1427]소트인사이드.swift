//
//  [1427]소트인사이드.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1427
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let input = readLine()!.map { Int(String($0))! }

for c in input.sorted(by: >) {
    print(c, terminator: "")
}
print("")
