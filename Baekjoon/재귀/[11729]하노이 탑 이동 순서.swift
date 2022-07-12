//
//  [11729]하노이 탑 이동 순서.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11729
//
//  Created by Jaehun Lee on 2022/07/12.
//

import Foundation

func hanoi(n: Int, from: Int, to: Int, tmp: Int) {
    if (n == 1) {
        print("\(from) \(to)")
        return
    }
    
    hanoi(n: n - 1, from: from, to: tmp, tmp: to)
    print("\(from) \(to)")
    hanoi(n: n - 1, from: tmp, to: to, tmp: from)
}

let n = Int(readLine()!)!

print(Int(pow(2, Double(n))) - 1)
hanoi(n: n, from: 1, to: 3, tmp: 2)
