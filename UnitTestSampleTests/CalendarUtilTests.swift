//
//  CalendarUtilTests.swift
//  UnitTestSampleTests
//
//  Created by RyosukeSeki on 2024/06/29.
//

import Foundation
import XCTest
import Cuckoo
@testable import UnitTestSample

class CalendarUtilTests: XCTestCase {
    func testCuckoo() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        formatter.locale = Locale(identifier: "ja_JP")
        
        // 自動生成されたモックを使用
        let mock = MockDateProtocol()
        
        // スタブを設定
        stub(mock) { stub in
            when(stub.now()).then {
                print("stub is called!")
                return formatter.date(from: "2019/01/06")!
            }
        }
        
        // モックのメソッドを呼び出す
        formatter.string(from: mock.now())
    }
    
    func testIsHoliday() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        formatter.locale = Locale(identifier: "ja_JP")
        
        let mock = MockDateProtocol()
        
        stub(mock) { stub in
            // 指定した値を順に返すスタブ
            when(stub.now()).thenReturn(
                formatter.date(from: "2019/01/06")!,
                formatter.date(from: "2019/01/07")!,
                formatter.date(from: "2019/01/11")!,
                formatter.date(from: "2019/01/12")!
            )
        }
        
        XCTAssertTrue(CalendarUtil(dateProtocol: mock).isHoliday())
        XCTAssertFalse(CalendarUtil(dateProtocol: mock).isHoliday())
        XCTAssertFalse(CalendarUtil(dateProtocol: mock).isHoliday())
        XCTAssertTrue(CalendarUtil(dateProtocol: mock).isHoliday())
    }
}
