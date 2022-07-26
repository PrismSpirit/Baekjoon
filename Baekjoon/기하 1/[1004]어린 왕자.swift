//
//  [1004]어린 왕자.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1004
//
//  Created by Jaehun Lee on 2022/07/26.
//

import Foundation

func isInSystem(x: Int, y: Int, system: (Int, Int, Int)) -> Bool {
    let cx = system.0
    let cy = system.1
    let r = system.2
    
    if (x - cx) * (x - cx) + (y - cy) * (y - cy) < r * r {
        return true
    } else {
        return false
    }
}

let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let x1 = input[0]
    let y1 = input[1]
    let x2 = input[2]
    let y2 = input[3]
    
    let n = Int(readLine()!)!
    
    var system: [(Int, Int, Int)] = []
    var count = 0
    
    for _ in 0..<n {
        let tmp = readLine()!.split(separator: " ").map { Int(String($0))! }
        let cx = tmp[0]
        let cy = tmp[1]
        let r = tmp[2]
        
        system.append((cx, cy, r))
        
        let startPointIsInSystem = isInSystem(x: x1, y: y1, system: (cx, cy, r))
        let endPointIsInSystem = isInSystem(x: x2, y: y2, system: (cx, cy, r))
        
        if !(startPointIsInSystem && endPointIsInSystem) {
            if startPointIsInSystem {
                count += 1
            }
            if endPointIsInSystem {
                count += 1
            }
        }
    }
    
    print(count)
}
