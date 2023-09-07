//
//  TestClass.swift
//  testValidation
//
//  Created by Sergey on 07.09.2023.
//

import Cocoa

enum MyError : Error {
    case error(String)
}

class TestClass: NSObject {

    @objc let Name : String!
    @objc var Value : String?
    
    init(Name: String!, Value: String) {
        self.Name = Name
        self.Value = Value
    }
    
    init(Name: String!) {
        self.Name = Name
        self.Value = Name
    }
    
    override func validateValue(_ ioValue: AutoreleasingUnsafeMutablePointer<AnyObject?>, forKey inKey: String) throws {
        if(inKey == #keyPath(Value)){
            guard let strVal = ioValue.pointee as? String else {throw MyError.error("Value should be a string")}
            if(!strVal.starts(with: "1")){
                throw MyError.error("Value should starts with 1");
            }
        } 
    }
}
