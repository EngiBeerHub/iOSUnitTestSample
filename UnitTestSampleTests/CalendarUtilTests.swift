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
    
    func testAdd() {
        let mock = MockTodoRepository()
        
        stub(mock) { stub in
            // スタブの設定
            when(stub.add("hello")).thenDoNothing()
        }
        
        // メソッドの呼び出し
        mock.add("hello")
        
        // メソッドが呼ばれたことを検証
        verify(mock).add("hello")
    }
    
    func testAdd2() {
        let mock = MockTodoRepository()
        
        stub(mock) { stub in
            // 任意の文字列で呼び出された場合のスタブを設定
            when(stub.add(anyString())).thenDoNothing()
        }
        
        // 2回呼び出し
        mock.add("hello")
        mock.add("goodbye")
        
        // 任意の文字列で、ちょうど2回だけ呼び出されたことを検証
        verify(mock, times(2)).add(anyString())
    }
}
