//
//  7.swift
//  euler
//
//  Created by Matt Dickoff on 9/16/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem7: Problem {
    var problemDefinition = """
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""
    

    
    func solve() -> Answer {
        var possibleMax = 1000000
        var primes = findPrimesUpTo(n: possibleMax)
        while (primes.count < 10001) {
            print("Only \(primes.count) under \(possibleMax) trying double that")
            possibleMax = possibleMax*2
            primes = findPrimesUpTo(n: possibleMax)
        }
        return Answer.init(result: primes[10001])
    }
    
    
    
}
