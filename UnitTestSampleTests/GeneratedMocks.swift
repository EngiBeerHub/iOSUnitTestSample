// MARK: - Mocks generated from file: UnitTestSample/DateProtocol.swift at 2024-06-29 09:07:22 +0000

//
//  DateProtocol.swift
//  UnitTestSample
//
//  Created by RyosukeSeki on 2024/06/29.
//

import Cuckoo
@testable import UnitTestSample

import Foundation






 class MockDateProtocol: DateProtocol, Cuckoo.ProtocolMock {
    
     typealias MocksType = DateProtocol
    
     typealias Stubbing = __StubbingProxy_DateProtocol
     typealias Verification = __VerificationProxy_DateProtocol

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: DateProtocol?

     func enableDefaultImplementation(_ stub: DateProtocol) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func now() -> Date {
        
    return cuckoo_manager.call(
    """
    now() -> Date
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.now())
        
    }
    
    

     struct __StubbingProxy_DateProtocol: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func now() -> Cuckoo.ProtocolStubFunction<(), Date> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockDateProtocol.self, method:
    """
    now() -> Date
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_DateProtocol: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func now() -> Cuckoo.__DoNotUse<(), Date> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    now() -> Date
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class DateProtocolStub: DateProtocol {
    

    

    
    
    
    
     func now() -> Date  {
        return DefaultValueRegistry.defaultValue(for: (Date).self)
    }
    
    
}










 class MockDateDefault: DateDefault, Cuckoo.ClassMock {
    
     typealias MocksType = DateDefault
    
     typealias Stubbing = __StubbingProxy_DateDefault
     typealias Verification = __VerificationProxy_DateDefault

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: DateDefault?

     func enableDefaultImplementation(_ stub: DateDefault) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func now() -> Date {
        
    return cuckoo_manager.call(
    """
    now() -> Date
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.now()
                ,
            defaultCall: __defaultImplStub!.now())
        
    }
    
    

     struct __StubbingProxy_DateDefault: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func now() -> Cuckoo.ClassStubFunction<(), Date> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockDateDefault.self, method:
    """
    now() -> Date
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_DateDefault: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func now() -> Cuckoo.__DoNotUse<(), Date> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    now() -> Date
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class DateDefaultStub: DateDefault {
    

    

    
    
    
    
     override func now() -> Date  {
        return DefaultValueRegistry.defaultValue(for: (Date).self)
    }
    
    
}










 class MockCalendarUtil: CalendarUtil, Cuckoo.ClassMock {
    
     typealias MocksType = CalendarUtil
    
     typealias Stubbing = __StubbingProxy_CalendarUtil
     typealias Verification = __VerificationProxy_CalendarUtil

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: CalendarUtil?

     func enableDefaultImplementation(_ stub: CalendarUtil) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     override func isHoliday() -> Bool {
        
    return cuckoo_manager.call(
    """
    isHoliday() -> Bool
    """,
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                super.isHoliday()
                ,
            defaultCall: __defaultImplStub!.isHoliday())
        
    }
    
    

     struct __StubbingProxy_CalendarUtil: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func isHoliday() -> Cuckoo.ClassStubFunction<(), Bool> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return .init(stub: cuckoo_manager.createStub(for: MockCalendarUtil.self, method:
    """
    isHoliday() -> Bool
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_CalendarUtil: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func isHoliday() -> Cuckoo.__DoNotUse<(), Bool> {
            let matchers: [Cuckoo.ParameterMatcher<Void>] = []
            return cuckoo_manager.verify(
    """
    isHoliday() -> Bool
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class CalendarUtilStub: CalendarUtil {
    

    

    
    
    
    
     override func isHoliday() -> Bool  {
        return DefaultValueRegistry.defaultValue(for: (Bool).self)
    }
    
    
}





// MARK: - Mocks generated from file: UnitTestSample/TodoRepository.swift at 2024-06-29 09:07:22 +0000

//
//  TodoRepository.swift
//  UnitTestSample
//
//  Created by RyosukeSeki on 2024/06/29.
//

import Cuckoo
@testable import UnitTestSample

import Foundation






 class MockTodoRepository: TodoRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = TodoRepository
    
     typealias Stubbing = __StubbingProxy_TodoRepository
     typealias Verification = __VerificationProxy_TodoRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: TodoRepository?

     func enableDefaultImplementation(_ stub: TodoRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
    
     func add(_ title: String)  {
        
    return cuckoo_manager.call(
    """
    add(_: String)
    """,
            parameters: (title),
            escapingParameters: (title),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.add(title))
        
    }
    
    

     struct __StubbingProxy_TodoRepository: Cuckoo.StubbingProxy {
        private let cuckoo_manager: Cuckoo.MockManager
    
         init(manager: Cuckoo.MockManager) {
            self.cuckoo_manager = manager
        }
        
        
        
        
        func add<M1: Cuckoo.Matchable>(_ title: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
            return .init(stub: cuckoo_manager.createStub(for: MockTodoRepository.self, method:
    """
    add(_: String)
    """, parameterMatchers: matchers))
        }
        
        
    }

     struct __VerificationProxy_TodoRepository: Cuckoo.VerificationProxy {
        private let cuckoo_manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
    
         init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.cuckoo_manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
    
        
    
        
        
        
        @discardableResult
        func add<M1: Cuckoo.Matchable>(_ title: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
            let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: title) { $0 }]
            return cuckoo_manager.verify(
    """
    add(_: String)
    """, callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        
    }
}


 class TodoRepositoryStub: TodoRepository {
    

    

    
    
    
    
     func add(_ title: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
    
}




