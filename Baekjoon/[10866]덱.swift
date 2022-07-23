//
//  [10866]덱.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10866
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

let n = Int(readLine()!)!
var deque: [Int] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let command = input[0]
    
    if command == "push_front" {
        let element = Int(input[1])!
        deque.insert(element, at: 0)
    } else if command == "push_back" {
        let element = Int(input[1])!
        deque.append(element)
    } else if command == "pop_front" {
        deque.isEmpty ? print(-1) : print(deque.removeFirst())
    } else if command == "pop_back" {
        deque.isEmpty ? print(-1) : print(deque.removeLast())
    } else if command == "size" {
        print(deque.count)
    } else if command == "empty" {
        deque.isEmpty ? print(1) : print(0)
    } else if command == "front" {
        deque.isEmpty ? print(-1) : print(deque.first!)
    } else if command == "back" {
        deque.isEmpty ? print(-1) : print(deque.last!)
    }
}
