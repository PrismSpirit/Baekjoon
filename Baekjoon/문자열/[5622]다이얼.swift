//
//  [5622]다이얼.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/5622
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

func alphabetToInt(_ c: Character) -> Int {
    let asciiOfC = Int(c.asciiValue!)
    
    if (asciiOfC >= 65 && asciiOfC < 68) {
        return 2
    } else if (asciiOfC >= 68 && asciiOfC < 71) {
        return 3
    } else if (asciiOfC >= 71 && asciiOfC < 74) {
        return 4
    } else if (asciiOfC >= 74 && asciiOfC < 77) {
        return 5
    } else if (asciiOfC >= 77 && asciiOfC < 80) {
        return 6
    } else if (asciiOfC >= 80 && asciiOfC < 84) {
        return 7
    } else if (asciiOfC >= 84 && asciiOfC < 87) {
        return 8
    } else {
        return 9
    }
}

let s = readLine()!
var result = 0

for c in s {
    result += alphabetToInt(c) + 1
}

print(result)
