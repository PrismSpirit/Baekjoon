//
//  [1620]나는야 포켓몬 마스터 이다솜.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/1620
//
//  Created by Jaehun Lee on 2022/07/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var pokedex: Dictionary<String, Int> = [:]
var pokedexIdxArr: [String] = []

for num in 1...n {
    let pokemonName = readLine()!
    
    if pokedex[pokemonName] == nil {
        pokedex[pokemonName] = num
    }
    
    pokedexIdxArr.append(pokemonName)
}

for _ in 0..<m {
    let inputStr = readLine()!
    
    if Int(inputStr) != nil {
        print(pokedexIdxArr[Int(inputStr)! - 1])
    } else {
        print(pokedex[inputStr]!)
    }
}
