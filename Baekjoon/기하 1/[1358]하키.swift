//
//  [1358]하키.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1358
//
//  Created by Jaehun Lee on 2022/07/26.
//

import Foundation

func isInStadium(x: Int, y: Int, w: Int, h: Int, xi: Int, yi: Int) -> Bool {
    if (xi < x) {
        if (xi - x) * (xi - x) + (yi - (y + h / 2)) * (yi - (y + h / 2)) <= (h / 2) * (h / 2) {
            return true
        } else {
            return false
        }
    } else if (xi >= x && xi < x + w) {
        if (yi >= y && yi <= y + h) {
            return true
        } else {
            return false
        }
    } else if (xi >= x + w) {
        if (xi - (x + w)) * (xi - (x + w)) + (yi - (y + h / 2)) * (yi - (y + h / 2)) <= (h / 2) * (h / 2) {
            return true
        } else {
            return false
        }
    }
    
    return false
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let w = input[0]
let h = input[1]
let x = input[2]
let y = input[3]
let p = input[4]

var count = 0

for _ in 0..<p {
    let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
    let xi = tmp[0]
    let yi = tmp[1]
    
    if isInStadium(x: x, y: y, w: w, h: h, xi: xi, yi: yi) {
        count += 1
    }
}

print(count)
