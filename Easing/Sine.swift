//
//  Sine.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation

struct Sine{
    static var EaseIn :Easing    = { (_t,b,c,d) -> CGFloat in
        return -c * cos(_t/d * (CGFloat(M_PI)/2)) + c + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        return c * sin(_t/d * (CGFloat(M_PI)/2)) + b
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        return -c/2 * (cos(CGFloat(M_PI)*_t/d) - 1) + b
    }
}