//
//  PurelyImaginaryNumber.swift
//  TDDBCSendai2018
//
//  Created by Shinzan Takata on 2018/10/20.
//  Copyright © 2018 shiz. All rights reserved.
//

import Foundation

struct PurelyImaginaryNumber: Equatable {
    private let imaginaryPart: Int
    
    init?(_ imaginaryPart: Int) {
        guard imaginaryPart != 0 else {
            return nil
        }
        
        self.imaginaryPart = imaginaryPart
    }
    
    var notation: String {
        if imaginaryPart == 1 {
            return "i"
        }
        if imaginaryPart == -1 {
            return "-i"
        }
        return "\(imaginaryPart)i"
    }
    
    var conjugate: PurelyImaginaryNumber? {
        return PurelyImaginaryNumber(-imaginaryPart)
    }
 }
