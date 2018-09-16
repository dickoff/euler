//
//  4.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem4: Problem {
    var problemDefinition = """
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""
    
    func solve() -> Answer {
        var candidates = [Int]()
        for x in 100...999 {
            for y in 100...999 {
                candidates.append(x*y)
            }
        }
        candidates.sort()
        for candidate in candidates.reversed() {
            if candidate.isPalindromic() {
                return Answer.init(result: candidate.description)
            }
        }
        return Answer.noAnswer()
    }
    
    
}
