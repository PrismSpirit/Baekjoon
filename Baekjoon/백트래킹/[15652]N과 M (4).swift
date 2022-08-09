//
//  [15652]N과 M (4).swift
//  Baekjoon
//  https://www.acmicpc.net/problem/15652
//
//  Created by Jaehun Lee on 2022/08/08.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

func sequence(_ n: Int, _ m: Int) -> [[Int]] {
    var numArr: [Int] = Array(1...n)
    var result: [[Int]] = []
    
    func aux(_ index: Int, _ history: [Int]) {
        var newHistory: [Int] = []
        
        if history.count == m {
            result.append(history)
            return
        }
        
        for i in index..<n {
            aux(i, history + [numArr[i]])
        }
        
    }
    
    aux(0, [])
    
    return result
}

for seq in sequence(n, m) {
    for s in seq {
        print(s, terminator: " ")
    }
    
    print("")
}
