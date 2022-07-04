//
//  [2480]주사위 세개.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/2480
//
//  Created by Jaehun Lee on 2022/07/04.
//

import Foundation

var input = readLine()!.components(separatedBy: " ").map { Int($0)! }
var dice1 = input[0]
var dice2 = input[1]
var dice3 = input[2]

if (dice1 == dice2 && dice2 == dice3) {
    print(10000 + (dice1 * 1000))
} else if (dice1 == dice2) {
    print(1000 + (dice1 * 100))
} else if (dice2 == dice3) {
    print(1000 + (dice2 * 100))
} else if (dice3 == dice1) {
    print(1000 + (dice3 * 100))
} else if (dice1 > dice2 && dice1 > dice3) {
    print(dice1 * 100)
} else if (dice2 > dice1 && dice2 > dice3) {
    print(dice2 * 100)
} else if (dice3 > dice1 && dice3 > dice2) {
    print(dice3 * 100)
}
