//
//  MainWindow.swift
//  testValidation
//
//  Created by Sergey on 07.09.2023.
//

import Cocoa

class MainWindow: NSWindowController {

    @objc let Data : NSMutableArray = NSMutableArray(array: [TestClass(Name: "1"),
                                                             TestClass(Name: "2"),
                                                             TestClass(Name: "3"),
                                                             TestClass(Name: "4"),
                                                             TestClass(Name: "5")])
    
    override var windowNibName: String! {
        return "MainWindow"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()

        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
}
