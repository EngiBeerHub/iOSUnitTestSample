//
//  CalculatorTests.swift
//  UnitTestSampleTests
//
//  Created by RyosukeSeki on 2024/06/28.
//

import Foundation
import XCTest
@testable import UnitTestSample

class CalculatorTests: XCTestCase {
    
    // 共通で利用するプロパティを宣言
    var calculator: Calculator!
    
    // 各テストメソッドごとの後処理
    override func setUp() {
        super.setUp()
        self.calculator = Calculator()
    }
    
    // 各テストごとの後処理
    override func tearDown() {
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(calculator.add(1, 2), 3)
    }
    
    func testSubtract() {
        XCTAssertEqual(calculator.subtract(3, 1), 2)
    }
    
    func testMultiple() {
        XCTAssertEqual(calculator.multiple(2, 3), 6)
    }
    
    func testDivision() {
        XCTAssertEqual(calculator.division(6, 2), 3)
    }
}
