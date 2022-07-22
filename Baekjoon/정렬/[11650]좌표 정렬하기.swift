//
//  [11650]좌표 정렬하기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/11650
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let n = Int(readLine()!)!
var coordList: [(Int, Int)] = []

for _ in 0..<n {
    let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
    coordList.append((input[0], input[1]))
}

let sortedCoordList = coordList.sorted {
    if ($0.0 == $1.0) {
        return $0.1 < $1.1
    }
    return $0.0 < $1.0
}

for coord in sortedCoordList {
    print("\(coord.0) \(coord.1)")
}
