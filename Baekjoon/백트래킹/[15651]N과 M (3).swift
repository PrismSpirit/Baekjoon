//
//  [15651]N과 M (3).swift
//  Baekjoon
//  https://www.acmicpc.net/problem/15651
//
//  Created by Jaehun Lee on 2022/08/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var resultStr = ""

func combinationWithRepetition(_ n: Int, _ m: Int) {
    func dfs(_ comb: [Int]) {
        if comb.count == m {
            resultStr.write("\(comb.map { String($0) }.joined(separator: " "))\n")
            
            return
        }
        
        for i in 1...n {
            dfs(comb + [i])
        }
    }
    
    dfs([])
}

combinationWithRepetition(n, m)

print(resultStr, terminator: "")
