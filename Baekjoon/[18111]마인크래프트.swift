//
//  [18111]마인크래프트.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/18111
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

let n = fIO.readInt()
let m = fIO.readInt()
let b = fIO.readInt()

var ground: [[Int]] = []

var maxHeight = 0
var minHeight = 256

for _ in 0..<n {
    var tmp: [Int] = []
    
    for _ in 0..<m {
        let block = fIO.readInt()
        
        tmp.append(block)
        
        if block < minHeight {
            minHeight = block
        }
        if block > maxHeight {
            maxHeight = block
        }
    }
    
    ground.append(tmp)
}

var minSpentTime = Int.max
var heightSaver = minHeight

for h in minHeight...maxHeight {
    var spentTime = 0
    var blockCount = b
    
    for groundLine in ground {
        for groundBlock in groundLine {
            if h < groundBlock {
                spentTime += (groundBlock - h) * 2
                blockCount += (groundBlock - h)
            } else if h > groundBlock {
                spentTime += (h - groundBlock)
                blockCount -= (h - groundBlock)
            }
        }
    }
    
    if blockCount >= 0 {
        if spentTime <= minSpentTime {
            minSpentTime = spentTime
            heightSaver = h
        }
    }
}

print("\(minSpentTime) \(heightSaver)")
