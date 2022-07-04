//
//  [14681]사분면 고르기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/14681
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var a = Int(readLine()!)!
var b = Int(readLine()!)!

if (a > 0 && b > 0) {
    print(1)
} else if (a < 0 && b > 0) {
    print(2)
} else if (a < 0 && b < 0) {
    print(3)
} else {
    print(4)
}
