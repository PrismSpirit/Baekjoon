//
//  [1966]프린터 큐.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1966
//
//  Created by Jaehun Lee on 2022/07/24.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = input[0]
    var m = input[1]
    var files = readLine()!.split(separator: " ").map { Int(String($0))! }
    var count = 0
    
    while !files.isEmpty {
        if files[0] == files.max()! {
            files.removeFirst()
            count += 1
            
            if m != 0 {
                m -= 1
            } else {
                break
            }
        } else {
            files.append(files.removeFirst())
            
            if (m != 0) {
                m -= 1
            } else {
                m = files.count - 1
            }
        }
    }
    
    print(count)
}
