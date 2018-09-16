//
//  1.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem1: Problem {
    var problemDefinition = """
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below 1000.
"""
    
    func solve() -> Answer {
        var summation = 0
        for candidate in 1...999 {
            if candidate % 3 == 0 {
                summation += candidate
            }else if candidate % 5 == 0 {
                summation += candidate
            }
        }
        return Answer(result: "\(summation)")
    }
}
