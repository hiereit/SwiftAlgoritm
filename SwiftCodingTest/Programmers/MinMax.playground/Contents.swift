
// 2023.04.17 MON
// swift 코테 연습
// 프로그래머스
// Level 2
// 최댓값과 최솟값
// https://school.programmers.co.kr/learn/courses/30/lessons/12939

import UIKit
import Foundation


let arr = "1 2 3 4"

// 처음 쓴 답
func solution(_ s:String) -> String {
    
    let arr = s.split(separator: " ")
    
    let numeralArr = arr.map { return Int($0)! }
    
    let max = numeralArr.max()
    let min = numeralArr.min()
    
    let returnValue = [String(numeralArr.min() ?? 0), String(numeralArr.max() ?? 0 )]
    let sol = returnValue.joined(separator: " ")
    
    return sol
    
}


func solution1(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map { Int($0)! }.sorted()
    
    return "\(arr.min()!) \(arr.max()!)"
}

func solution2(_ s: String) -> String {
    let arr = s.split(separator: " ").compactMap { Int($0) }
    return "\(arr.min()!) \(arr.max()!)"
}


print("Solution: \(solution(arr))")
