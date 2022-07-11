//
//  [10757]큰 수 A+B.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/10757
//
//  Created by Jaehun Lee on 2022/07/11.
//

import Foundation

var a: [Int] = []
var b: [Int] = []
var result: [Int] = []

let input = readLine()!.components(separatedBy: " ")

for c in String(input[0].reversed()) {
    a.append(Int(String(c))!)
}

for c in String(input[1].reversed()) {
    b.append(Int(String(c))!)
}

let lenA = a.count
let lenB = b.count

if (lenA < lenB) {
    for _ in 0..<lenB - lenA {
        a.append(0)
    }
} else if (lenA > lenB) {
    for _ in 0..<lenA - lenB {
        b.append(0)
    }
}

a.append(0)
b.append(0)

let iter_num = a.count

var carry = false

for i in 0..<iter_num {
    var tmp = 0
    if carry {
        tmp = a[i] + b[i] + 1

    } else {
        tmp = a[i] + b[i]
    }
    carry = false
    if tmp / 10 != 0 {
        carry = true
    }
    result.append(tmp % 10)
}

result.reverse()

for i in 0..<result.count {
    if (i == 0 && result[i] == 0) {
        continue
    }
    print(result[i], terminator: "")
}
print("")
