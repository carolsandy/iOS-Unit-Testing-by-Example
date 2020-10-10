//
//  MyClass.swift
//  LifeCycle
//
//  Created by Carmen Salvador on 28/09/20.
//  Copyright © 2020 Carmen Salvador. All rights reserved.
//

import Foundation

class MyClass {
    private static var allInstances = 0
    private let instance: Int
    
    init() {
        MyClass.allInstances += 1
        instance = MyClass.allInstances
        print(">> MyClass.init() .#\(instance)")
    }
    
    deinit {
        print(">> MyClass.deinit #\(instance)")
    }
    
    func methodOne() {
        print(">> methodOne")
    }
    func methodTwo() {
        print(">> methodTwo")
    }
}
