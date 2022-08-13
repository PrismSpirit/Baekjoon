//
//  [14888]연산자 끼워넣기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/14888
//
//  Created by Jaehun Lee on 2022/08/13.
//

import Foundation

let n = Int(readLine()!)!
let numArr = readLine()!.split(separator: " ").map { Int(String($0))! }
var operCountArr = readLine()!.split(separator: " ").map { Int(String($0))! }

func calc() -> (Int, Int) {
    var maxVal = -1_000_000_000
    var minVal = 1_000_000_000
    
    func aux(_ index: Int, _ result: Int) {
        if (index == n) {
            if (result > maxVal) {
                maxVal = result
            }
            if (result < minVal) {
                minVal = result
            }
            return
        }
        
        for i in 0..<4 {
            if operCountArr[i] > 0 {
                operCountArr[i] -= 1
                
                switch i {
                case 0:
                    aux(index + 1, result + numArr[index])
                case 1:
                    aux(index + 1, result - numArr[index])
                case 2:
                    aux(index + 1, result * numArr[index])
                case 3:
                    aux(index + 1, result / numArr[index])
                default:
                    return
                }
                
                operCountArr[i] += 1
            }
        }
    }
    
    aux(1, numArr[0])
    
    return (maxVal, minVal)
}

let result = calc()

print(result.0)
print(result.1)
