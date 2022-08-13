//
//  [9663]N-Queen.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/9663
//
//  Created by Jaehun Lee on 2022/08/09.
//

import Foundation

func nQueen(_ n: Int) -> Int {
    var board: [Int] = Array(repeating: 0, count: n)
    var result = 0
    
    func aux(_ numOfDeployed: Int) {
        if (numOfDeployed == n) {
            result += 1
            return
        }
        
        var flag: Bool
        
        for i in 0..<n {
            flag = true
            
            for j in 0..<numOfDeployed {
                if (board[j] == i || abs(numOfDeployed - j) == abs(i - board[j])) {
                    flag = false
                    break
                }
            }
            
            if flag {
                board[numOfDeployed] = i
                aux(numOfDeployed + 1)
            }
        }
    }
    
    aux(0)
    
    return result
}

let n = Int(readLine()!)!

print(nQueen(n))
