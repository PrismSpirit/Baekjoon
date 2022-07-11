//
//  [2839]설탕 배달.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2839
//
//  Created by Jaehun Lee on 2022/07/11.
//

import Foundation

let weight = Int(readLine()!)!

for x in (0...weight / 5).reversed() {
    if ((weight - (5 * x)) % 3 == 0) {
        print(x + (weight - (5 * x)) / 3)
        exit(0)
    }
}

print(-1)
