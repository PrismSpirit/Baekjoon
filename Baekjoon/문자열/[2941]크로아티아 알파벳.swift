//
//  [2941]크로아티아 알파벳.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2941
//
//  Created by Jaehun Lee on 2022/07/05.
//

import Foundation

func isCroatianAlphabet(_ curr: String, _ next: String, _ next2: String?) -> (Bool, Int) {
    if next2 != nil {
        if (curr == "d" && next == "z" && next2 == "=") {
            return (true, 2)
        }
    }
    if (curr == "c") {
        if (next == "=" || next == "-") {
            return (true, 1)
        }
    } else if (curr == "d" && next == "-") {
        return (true, 1)
    } else if (curr == "l" && next == "j") {
        return (true, 1)
    } else if (curr == "n" && next == "j") {
        return (true, 1)
    } else if (curr == "s" && next == "=") {
        return (true, 1)
    } else if (curr == "z" && next == "=") {
        return (true, 1)
    }
    
    return (false, 0)
}

extension String {
    subscript(_ idx: Int) -> String? {
        guard (0..<count).contains(idx) else {
            return nil
        }
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

var s = readLine()!

if s.count == 1 {
    print(1)
    exit(0)
}

var count = 0
var skipCounter = 0
let sLen = s.count

for i in 0..<sLen - 2 {
    if skipCounter != 0 {
        skipCounter -= 1
        continue
    } else {
        let isCA = isCroatianAlphabet(s[i]!, s[i + 1]!, s[i + 2])
        if isCA.0 {
            skipCounter = isCA.1
        }
        count += 1
    }
}

if (skipCounter == 1) {
    count += 1
} else if (skipCounter == 0) {
    if isCroatianAlphabet(s[sLen - 2]!, s[sLen - 1]!, nil).0 {
        count += 1
    } else {
        count += 2
    }
}

print(count)
