//
//  shuffle.swift
//  questionsgame
//
//  Created by Austin Harshberger on 6/14/17.
//  Copyright © 2017 Austin Harshberger. All rights reserved.
//

import Foundation

extension Array
{
    /** Randomizes the order of an array's elements. */
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}
