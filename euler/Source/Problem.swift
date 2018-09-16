//
//  Problem.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation


protocol Problem {
    var problemDefinition: String { get }
    func solve() -> Answer
    
}
