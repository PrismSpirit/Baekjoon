//
//  [15649]N과 M (1).swift
//  Baekjoon
//  https://www.acmicpc.net/problem/15649
//
//  Created by Jaehun Lee on 2022/08/03.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var numArr = Array(1...n)

func dfs(numbers: [Int], count: Int, answer: inout [[Int]], history: [Int]) {
    if (count == 0) {
        answer.append(history)
        return
    }
    
    for i in 0..<numbers.count {
        var newHistory = history
        var numbers = numbers
        
        newHistory.append(numbers.remove(at: i))
        
        dfs(numbers: numbers, count: count - 1, answer: &answer, history: newHistory)
    }
}

var answer: [[Int]] = []
dfs(numbers: numArr, count: m, answer: &answer, history: [])

for ans in answer {
    for a in ans {
        print(a, terminator: " ")
    }
    print("")
}
