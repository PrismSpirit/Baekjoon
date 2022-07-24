//
//  [15829]Hashing.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/15829
//
//  Created by Jaehun Lee on 2022/07/24.
//

import Foundation

func mod(_ n: Int) -> Int {
    if n >= 1_234_567_891 {
        return n % 1_234_567_891
    }
    
    return n
}

let n = Int(readLine()!)!
let s = readLine()!.map { String($0) }
var hashValue = 0

for x in 0..<n {
    let i = Int(Character(s[x]).asciiValue!) - 97
    
    var powOf31 = 1
    
    for _ in 0..<x {
        powOf31 = mod(powOf31 * 31)
    }
    
    hashValue = mod(hashValue + mod((i + 1) * powOf31))
}

print(hashValue)
