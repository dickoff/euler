//
//  Utilities.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

extension Int {

   nonmutating func  isPrime() -> Bool {
        if self == 1 {
            return false
        }
        if self % 2 == 0 {
            return false
        }
        
        for candidateDivisor in 2...Int.init(sqrt(Double(self))) {
            if self % candidateDivisor == 0 {
                return false
            }
        }
        return true
    }
    
    nonmutating func isPalindromic() -> Bool {
        let stringRepresentation = self.description
        return stringRepresentation.elementsEqual(stringRepresentation.reversed())
    }
    
}

func sumFromOneTo(n:Int) -> Int{
    return n * (n+1) / 2
}

func sumOfSquaresFromOneTo(n:Int) -> Int{
    return (n * (2*n + 1) * (n + 1)) / 6
}

//Use the Sieve of Eratosthenes to find all the primes up to N
func findPrimesUpTo(n: Int) -> Array<Int> {
    var isPrime = Array.init(repeating: true, count: n+1)
    isPrime[0] = false
    isPrime[1] = false
    for i in 2...n {
        if isPrime[i] {
            for j in stride(from: i*2, to: n+1, by: i) {
                isPrime[j] = false
            }
        }
    }
    var primes = [Int]()
    for i in isPrime.indices {
        if isPrime[i] {
            primes.append(i)
        }
    }
    return primes
}
