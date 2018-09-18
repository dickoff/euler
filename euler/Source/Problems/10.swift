//
//  10.swift
//  euler
//
//  Created by Matt Dickoff on 9/16/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem10: Problem {
    var problemDefinition = """
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""
    
    func solve() -> Answer {
        let primes = findPrimesUpTo(n: 2000000)
        let summation = primes.reduce(0, { (x, y) -> Int in
            x+y
        })
        return Answer.init(result: summation)
    }
    
    
}
