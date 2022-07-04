//
//  [2753]윤년.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2753
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = Int(readLine()!)!

print((input % 4 == 0) && (input % 100 != 0 || input % 400 == 0) ? 1 : 0)
