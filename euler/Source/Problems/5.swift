//
//  5.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem5: Problem {
    var problemDefinition = """
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""
    
    func evaluate(candidate:Int) -> Bool {
        for divisor in 2...20 {
            if candidate % divisor != 0 {
                return false
            }
        }
        return true
    }
    
    //Super brute force-y
    func solve() -> Answer {
        var candidate = 20
        while(true) {
            if evaluate(candidate: candidate) {
                return Answer.init(result: candidate)
            }
            candidate += 1
        }
    }
    
    
}
