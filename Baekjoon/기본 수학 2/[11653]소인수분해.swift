//
//  [11653]소인수분해.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11653
//
//  Created by Jaehun Lee on 2022/07/11.
//

import Foundation

var n = Int(readLine()!)!

if (n > 1) {
    var i = 2
    while (n != 1) {
        while (n % i == 0) {
            n /= i
            print(i)
        }
        i += 1
    }
}
