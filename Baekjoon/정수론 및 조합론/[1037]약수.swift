//
//  [1037]약수.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1037
//
//  Created by Jaehun Lee on 2022/07/26.
//

import Foundation

let _ = Int(readLine()!)!

let primeArr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

print(primeArr.first! * primeArr.last!)
