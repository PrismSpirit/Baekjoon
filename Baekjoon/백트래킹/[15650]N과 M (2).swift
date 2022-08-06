//
//  [15650]N과 M (2).swift
//  Baekjoon
//  https://www.acmicpc.net/problem/15650
//
//  Created by Jaehun Lee on 2022/08/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

func combination(_ n: Int, _ m: Int) -> [[Int]] {
    var numArr = Array(1...n)
    var result: [[Int]] = []
    
    func dfs(_ index: Int, _ comb: [Int]) {
        if (comb.count == m) {
            result.append(comb)
            return
        }
        
        for i in index..<n {
            dfs(i + 1, comb + [numArr[i]])
        }
    }
    
    dfs(0, [])
    
    return result
}

for comb in combination(n, m) {
    for c in comb {
        print(c, terminator: " ")
    }
    print("")
}

