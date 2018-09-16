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
