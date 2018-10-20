//
//  PurelyImaginaryNumberTests.swift
//  TDDBCSendai2018Tests
//
//  Created by Shinzan Takata on 2018/10/20.
//  Copyright © 2018 shiz. All rights reserved.
//

import XCTest
@testable import TDDBCSendai2018

// TODO
// x虚部 (きょぶ : imaginary part) を与えて純虚数を生成する
//  x虚部が0ではない整数であった場合、純虚数が生成できること
//  x虚部が0であった場合、純虚数が生成できないこと

// x生成した純虚数から 文字列表記 (notation) を取得する
//  x5を与えて純虚数を生成した場合、文字列表記が5iになること
//  x2を与えて純虚数を生成した場合、文字列表記が2iになること
//  x-2を与えて純虚数を生成した場合、文字列表記が-2iになること
//  x1を与えて純虚数を生成した場合、文字列表記がiになること
//  x-1を与えて純虚数を生成した場合、文字列表記が-iになること

// x任意の２つの純虚数について、その同一性を判定してください
//  x5を与えて生成した純虚数と、別の5を与えて生成した純虚数が等しいこと
//  x4を与えて生成した純虚数と、5を与えて生成した純虚数が等しくないこと

// x任意の純虚数の共役を取得できること
//  x2iの共役が-2iであること
//  xiの共役が-iであること

class PurelyImaginaryNumberTests: XCTestCase {
    func test_虚部を与えて純虚数を生成する() {
        XCTContext.runActivity(named: "虚部が0ではない整数であった場合_純虚数が生成できること") { _ in
            XCTAssertNotNil(PurelyImaginaryNumber(5))
            XCTAssertNotNil(PurelyImaginaryNumber(-7))
        }
        
        XCTContext.runActivity(named: "虚部が0であった場合_純虚数が生成できないこと") { _ in
            XCTAssertNil(PurelyImaginaryNumber(0))
        }

    }
    
    func test_生成した純虚数からを取得する() {
        XCTContext.runActivity(named: "5を与えて純虚数を生成した場合_文字列表記が5iになること") { _ in
            let unwrappedPin = unwrap(PurelyImaginaryNumber(5))
            XCTAssertEqual("5i", unwrappedPin.notation)
        }
        
        XCTContext.runActivity(named: "2を与えて純虚数を生成した場合_文字列表記が2iになること") { _ in
            let unwrappedPin = unwrap(PurelyImaginaryNumber(2))
            XCTAssertEqual("2i", unwrappedPin.notation)
        }
        
        XCTContext.runActivity(named: "-2を与えて純虚数を生成した場合_文字列表記が-2iになること") { _ in
            let unwrappedPin = unwrap(PurelyImaginaryNumber(-2))
            XCTAssertEqual("-2i", unwrappedPin.notation)
        }
        
        XCTContext.runActivity(named: "1を与えて純虚数を生成した場合_文字列表記がiになること") { _ in
            let unwrappedPin = unwrap(PurelyImaginaryNumber(1))
            XCTAssertEqual("i", unwrappedPin.notation)
        }
        
        XCTContext.runActivity(named: "-1を与えて純虚数を生成した場合_文字列表記が-iになること") { _ in
            let unwrappedPin = unwrap(PurelyImaginaryNumber(-1))
            XCTAssertEqual("-i", unwrappedPin.notation)
        }
    }
    
    func test_任意の2つの純虚数についてその同一性を判定する() {
        XCTContext.runActivity(named: "5を与えて生成した純虚数と別の5を与えて生成した純虚数が等しいこと") { _ in
            XCTAssertEqual(
                PurelyImaginaryNumber(5),
                PurelyImaginaryNumber(5)
            )
        }
        
        XCTContext.runActivity(named: "4を与えて生成した純虚数と5を与えて生成した純虚数が等しくないこと") { _ in
            XCTAssertNotEqual(
                PurelyImaginaryNumber(4),
                PurelyImaginaryNumber(5)
            )
        }
    }
    
    func test_任意の純虚数の共役を取得できること() {
        XCTContext.runActivity(named: "2iの共役が-2iであること") { _ in
            XCTAssertEqual(
                PurelyImaginaryNumber(-2),
                PurelyImaginaryNumber(2)?.conjugate
            )
        }
        
        XCTContext.runActivity(named: "iの共役が-iであること") { _ in
            XCTAssertEqual(
                PurelyImaginaryNumber(-1),
                PurelyImaginaryNumber(1)?.conjugate
            )
        }
    }
    
    // Test Helper
    private func unwrap(_ pin: PurelyImaginaryNumber?) -> PurelyImaginaryNumber {
        guard let pin = pin else {
            XCTFail("PurelyImaginaryNumber should not be nil.")
            fatalError()
        }
        
        return pin
    }
}
