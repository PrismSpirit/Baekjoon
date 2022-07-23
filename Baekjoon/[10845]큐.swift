//
//  [10845]큐.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10845
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

let n = Int(readLine()!)!
var queue: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let command = input[0]
    let element: Int? = input[1]
    
    if command == "push" {
        queue.append(element)
    } else if command == "pop" {
        queue.isEmpty ? print(-1) : print(queue.removeFirst())
    } else if command == "size" {
        print(queue.count)
    } else if command == "empty" {
        queue.isEmpty ? print(1) : print(0)
    } else if command == "front" {
        queue.isEmpty ? print(-1) : print(queue.first!)
    } else if command == "back" {
        queue.isEmpty ? print(-1) : print(queue.last!)
    }
}
