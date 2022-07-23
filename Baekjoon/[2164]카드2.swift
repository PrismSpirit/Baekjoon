//
//  [2164]카드2.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2164
//
//  Created by Jaehun Lee on 2022/07/23.
//

import Foundation

let n = Int(readLine()!)!
var cardArr = [Int](1...n)
var lenOfCardArr = cardArr.count

while true {
    if lenOfCardArr == 1 {
        break
    }
    
    if (lenOfCardArr % 2 != 0) {
        var tmpArr: [Int] = []
        
        for i in stride(from: 1, to: lenOfCardArr, by: 2) {
            tmpArr.append(cardArr[i])
        }
        
        tmpArr.append(tmpArr.removeFirst())
        
        cardArr = tmpArr
        lenOfCardArr = lenOfCardArr / 2
    } else {
        var tmpArr: [Int] = []
        
        for i in stride(from: 1, to: lenOfCardArr, by: 2) {
            tmpArr.append(cardArr[i])
        }
        
        cardArr = tmpArr
        lenOfCardArr /= 2
    }
}

print(cardArr[0])
