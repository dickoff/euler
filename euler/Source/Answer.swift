//
//  Answer.swift
//  euler
//
//  Created by Matt Dickoff on 9/15/18.
//  Copyright © 2018 Matt Dickoff. All rights reserved.
//

import Foundation

class Answer: CustomStringConvertible{
    var result: String
    init(result:String) {
        self.result = result
    }

    var description: String {
        return result
    }
}
