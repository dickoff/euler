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
    init(result:Int) {
        self.result = "\(result)"
    }
    
    class func noAnswer() -> Answer{
        return Answer.init(result: "No Answer")
    }

    var description: String {
        return result
    }
    
    
}
