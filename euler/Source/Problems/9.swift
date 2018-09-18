//
//  9.swift
//  euler
//
//  Created by Matt Dickoff on 9/16/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem9: Problem {
    var problemDefinition = """
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""
    
    func solve() -> Answer {
        for a in 1...1000 {
            for b in a...1000 {
                for c in b...1000 {
                    if (a*a + b*b == c*c) && (a + b + c == 1000) {
                        print(a, b, c)
                        return Answer.init(result: a*b*c)
                    }
                }
            }
        }
        return Answer.noAnswer()
    }
}
