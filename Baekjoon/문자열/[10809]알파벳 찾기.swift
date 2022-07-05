//
//  [10809]알파벳 찾기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10809
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

let charArr = readLine()!.map { String($0) }
var posArr: [Int] = Array(repeating: -1, count: 26)

for i in 0..<charArr.count {
    let idx = Int(Character(charArr[i]).asciiValue! - 97)
    
    if (posArr[idx] == -1) {
        posArr[idx] = i
    }
}

for pos in posArr {
    print(pos, terminator: " ")
}
print("")
