//
//  Bounce.swift
//  Easing
//
//  Created by Jansel Valentin on 5/13/16.
//  Copyright © 2016 Jansel Valentin. All rights reserved.
//

import Foundation


struct Bounce{
    static var EaseIn :Easing    = { (t,b,c,d) -> CGFloat in
        return c - EaseOut(t: d-t,b: b,c: c,d: d) + b
    }
    
    static var EaseOut :Easing   = { (_t,b,c,d) -> CGFloat in
        var t = _t/d
        if t < (1/2.75){
            return c*(7.5625*t*t) + b;
        } else if t < (2/2.75) {
            t -= 1.5/2.75
            return c*(7.5625*t*t + 0.75) + b;
        } else if t < (2.5/2.75) {
            t -= 2.25/2.75
            return c*(7.5625*t*t + 0.9375) + b;
        } else {
            t -= 2.625/2.75
            return c*(7.5625*t*t + 0.984375) + b;
        }
    }
    
    static var EaseInOut :Easing = { (_t,b,c,d) -> CGFloat in
        let t = _t
        if t < d/2{
            return EaseIn (t: t*2, b: 0, c: c, d: d) * 0.5 + b
        }
        return EaseOut (t: t*2-d, b: 0, c: c, d: d) * 0.5 + c*0.5 + b
    }
}