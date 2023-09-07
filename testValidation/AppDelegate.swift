//
//  AppDelegate.swift
//  testValidation
//
//  Created by Sergey on 06.09.2023.
//

import Cocoa

enum TestError : Error{
    case Test111
    case Test999
}

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: MainWindow!
    override init() {
    }
    
    @MainActor
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        window = MainWindow()
        window.showWindow(self)
    }
}
