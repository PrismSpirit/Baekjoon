//
//  [1654]랜선 자르기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1654
//
//  Created by Jaehun Lee on 2022/07/24.
//

import Foundation

// FileIO URL
// https://gist.github.com/JCSooHwanCho/30be4b669321e7a135b84a1e9b075f88#file-fileio-swift
final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        
        buffer = Array(try! fileHandle.readToEnd()!)+[UInt8(0)] // 인덱스 범위 넘어가는 것 방지
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }

        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return String(bytes: Array(buffer[beginIndex..<(index-1)]), encoding: .ascii)!
    }

    @inline(__always) func readByteSequenceWithoutSpaceAndLineFeed() -> [UInt8] {
        var now = read()

        while now == 10 || now == 32 { now = read() } // 공백과 줄바꿈 무시
        let beginIndex = index-1

        while now != 10,
              now != 32,
              now != 0 { now = read() }

        return Array(buffer[beginIndex..<(index-1)])
    }
}

let fIO = FileIO()

var LANLineArr: [Int] = []

let k = fIO.readInt()
let n = fIO.readInt()

for _ in 0..<k {
    LANLineArr.append(fIO.readInt())
}

var start = 1
var end = LANLineArr.max()!
var mid = (start + end) / 2

while start <= end {
    var LANLineCount = 0
    
    for LANLine in LANLineArr {
        LANLineCount += (LANLine / mid)
    }
    
    if LANLineCount < n {
        end = mid - 1
    } else {
        start = mid + 1
    }
    
    mid = (start + end) / 2
}

print(mid)
