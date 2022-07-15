//
//  [1018]체스판 다시 칠하기.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1018
//
//  Created by Jaehun Lee on 2022/07/15.
//

import Foundation

func chessBoard8x8Drawer(_ board: [[String]]) -> Int {
    var startsWithWhite = 0
    var startsWithBlack = 0
    
    for i in 0..<8 {
        for j in 0..<8 {
            if (i % 2 == 0) {
                if (j % 2 == 0) {
                    if (board[i][j] != "W") {
                        startsWithWhite += 1
                    }
                    if (board[i][j] != "B") {
                        startsWithBlack += 1
                    }
                } else {
                    if (board[i][j] != "B") {
                        startsWithWhite += 1
                    }
                    if (board[i][j] != "W") {
                        startsWithBlack += 1
                    }
                }
            } else {
                if (j % 2 == 0) {
                    if (board[i][j] != "B") {
                        startsWithWhite += 1
                    }
                    if (board[i][j] != "W") {
                        startsWithBlack += 1
                    }
                } else {
                    if (board[i][j] != "W") {
                        startsWithWhite += 1
                    }
                    if (board[i][j] != "B") {
                        startsWithBlack += 1
                    }
                }
            }
        }
    }
    
    return startsWithWhite < startsWithBlack ? startsWithWhite : startsWithBlack
}

let input = readLine()!.components(separatedBy: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var originalBoard: [[String]] = []
var minimumDrawing = 64

for _ in 0..<n {
    originalBoard.append(readLine()!.map { String($0) })
}

for i in 0...n - 8 {
    for j in 0...m - 8 {
        var newChessBoard: [[String]] = []
        
        for x in i..<i + 8 {
            newChessBoard.append(Array<String>(originalBoard[x][j..<j + 8]))
        }
        
        let drawing = chessBoard8x8Drawer(newChessBoard)
        
        if (drawing < minimumDrawing) {
            minimumDrawing = drawing
        }
    }
}

print(minimumDrawing)
