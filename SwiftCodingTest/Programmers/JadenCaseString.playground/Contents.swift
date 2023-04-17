
// 2023.04.17 MON
// swift 코테 연습
// 프로그래머스
// Level 2
// JadenCase 문자열 만들기
// https://school.programmers.co.kr/learn/courses/30/lessons/12951

import UIKit
import Foundation


let s = "3people unFollowed me"

func solution(_ s: String) -> String {
    
    let temp = s.components(separatedBy: " ")
    var result = [String]()
    
    
    for s in temp {
        
        var changedString = String()
        var foundLetter = false
        
        if (s.first?.isLetter ?? false) {
            
            for i in s {
                if i.isLetter && !foundLetter {
                    changedString.append(i.uppercased())
                    foundLetter = true
                } else {
                    changedString.append(i.lowercased())
                }
            }
        } else {
            for i in s {
                changedString.append(i.lowercased())
            }
        }
    
        result.append(changedString)
    }
    
    
    return result.joined(separator: " ")
}

print("Solution: \(solution(s))")
