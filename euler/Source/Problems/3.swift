//
//  3.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem3: Problem {
    var problemDefinition = """
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""
    
    func findFactors(input:Int) -> Array<Int> {
        var result = [Int]()
        let lastPossibleFactor = Int.init(sqrt(Double(input)))
        for candidate in 1...lastPossibleFactor {
            let (quotient, remainder) = input.quotientAndRemainder(dividingBy: candidate)
            if remainder == 0 {
                result.append(candidate)
                result.append(quotient)
            }
        }
        return result
    }
    
    func solve() -> Answer {
        let factors = findFactors(input: 600851475143).sorted()
        for factor in factors.reversed() {
            if factor.isPrime() {
                return Answer.init(result: "\(factor)")
            }
        }
        
        return Answer.init(result: "No Answer Found")
    }
    
    
}
