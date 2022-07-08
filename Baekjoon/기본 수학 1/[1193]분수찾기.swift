//
//  [1193]분수찾기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1193
//
//  Created by Jaehun Lee on 2022/07/08.
//

import Foundation

func sum(_ n: Int) -> Int {
    if (n % 2 != 0) {
        return (1 + n) * ((n - 1) / 2) + (n / 2 + 1)
    } else {
        return (1 + n) * (n / 2)
    }
}

var p = 1
var q = 1

var n = Int(readLine()!)!

var i = 0

while(true) {
    if (n == (sum(i) + 1)) {
        if (i % 2 != 0) {
            q += i
        } else {
            p += i
        }
        break
    } else if (n < (sum(i) + 1)) {
        if ((i - 1) % 2 != 0) {
            q += i - 1
            p += n - sum(i - 1) - 1
            q -= n - sum(i - 1) - 1
        } else {
            p += i - 1
            p -= n - sum(i - 1) - 1
            q += n - sum(i - 1) - 1
        }
        break
    }
    i += 1
}

print("\(p)/\(q)")
