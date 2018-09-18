//
//  6.swift
//  euler
//
//  Created by Matt Dickoff on 9/16/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Problem6: Problem  {
    var problemDefinition = """
The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""
    
    func solve() -> Answer {
        let sumOfSquares = sumOfSquaresFromOneTo(n: 100)
        let sumOfRange = sumFromOneTo(n: 100)
        let result = sumOfRange * sumOfRange - sumOfSquares
        return Answer.init(result: result)
    }
    
    
}
