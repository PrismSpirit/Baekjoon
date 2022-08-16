//
//  [14889]스타트와 링크.swift
//  Baekjoon
//  https://www.acmicpc.net/problem/14889
//
//  Created by Jaehun Lee on 2022/08/14.
//

import Foundation

let n = Int(readLine()!)!
var S: [[Int]] = []

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    S.append(input)
}

func startLink() -> Int {
    var minVal = 100
    let memberArr: [Int] = Array(1...n)
    var team: [[Int]] = []
    var idxList: [[Int]] = []
    
    func aux1(_ member: Int, _ history: [Int]) {
        if history.count == n / 2 {
            team.append(history)
            return
        }
        
        for i in member..<memberArr.count {
            aux1(i + 1, history + [memberArr[i]])
        }
    }
    
    func aux2(_ index: Int, _ history: [Int]) {
        if history.count == 2 {
            idxList.append(history)
            return
        }
        
        for i in index..<n / 2 {
            aux2(i + 1, history + [i])
        }
    }
    
    aux1(0, [])
    aux2(0, [])
    
    let lenOfTeam = team.count
    
    for i in 0..<lenOfTeam / 2 {
        var startAbility = 0
        var linkAbility = 0
        
        for j in idxList {
            startAbility += S[team[i][j[0]] - 1][team[i][j[1]] - 1] + S[team[i][j[1]] - 1][team[i][j[0]] - 1]
            linkAbility += S[team[lenOfTeam - 1 - i][j[0]] - 1][team[lenOfTeam - 1 - i][j[1]] - 1] + S[team[lenOfTeam - 1 - i][j[1]] - 1][team[lenOfTeam - 1 - i][j[0]] - 1]
        }
        let diff = abs(startAbility - linkAbility)
        
        if diff < minVal {
            minVal = diff
        }
    }
    
    return minVal
}

print(startLink())
