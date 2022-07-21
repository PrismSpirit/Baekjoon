//
//  [2751]수 정렬하기 2.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2751
//
//  Created by Jaehun Lee on 2022/07/21.
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

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var merged: [Int] = []
    let lenOfLeft = left.count
    let lenOfRight = right.count
    var idxOfLeft = 0
    var idxOfRight = 0
    
    while (idxOfLeft != lenOfLeft && idxOfRight != lenOfRight) {
        if (left[idxOfLeft] < right[idxOfRight]) {
            merged.append(left[idxOfLeft])
            idxOfLeft += 1
        } else {
            merged.append(right[idxOfRight])
            idxOfRight += 1
        }
    }
    
    if idxOfLeft != lenOfLeft {
        merged += left[idxOfLeft...]
    }
    if idxOfRight != lenOfRight {
        merged += right[idxOfRight...]
    }
    
    return merged
}

func mergeSort(_ numArr: [Int]) -> [Int] {
    let lenOfNumArr = numArr.count
    
    if lenOfNumArr < 2 {
        return numArr
    }
    
    let middle = lenOfNumArr / 2
    let left = Array(numArr[0..<middle])
    let right = Array(numArr[middle..<lenOfNumArr])
    
    return merge(mergeSort(left), mergeSort(right))
}


let fIO = FileIO()
let n = fIO.readInt()
var numArr: [Int] = []

for _ in 0..<n {
    numArr.append(fIO.readInt())
}

for num in mergeSort(numArr) {
    print(num)
}
