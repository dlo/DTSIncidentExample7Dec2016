//
//  DTSIncidentExample7Dec2016UITests.swift
//  DTSIncidentExample7Dec2016UITests
//
//  Created by Daniel Loewenherz on 12/7/16.
//  Copyright © 2016 Lionheart Software LLC. All rights reserved.
//

import XCTest

class DTSIncidentExample7Dec2016UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    func testExample() {
        let app = XCUIApplication()

        addUIInterruptionMonitor(withDescription: "Loading") { handler in
            return false
        }

        app.buttons["I'm a button, click me!"].tap()
        app.buttons["OK, now click me!"].tap()
    }
}
