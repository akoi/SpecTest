//
//  ViewControllerSpec.swift
//  SpecTest
//
//  Created by Anton Bagchi on 18/11/2014.
//
//

import SpecTest
import UIKit
import Quick
import Nimble

class ViewControllerSpecs: QuickSpec {
    
    override func spec() {
        var viewController: ViewController!
        
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            viewController = storyboard.instantiateViewControllerWithIdentifier("ViewController") as ViewController
            viewController.beginAppearanceTransition(true, animated: false)
            viewController.endAppearanceTransition()
        }
        
        describe("the view controller after initialization") {
            it("should be of type ViewController") {
                expect(viewController.isKindOfClass(ViewController)).to(beTruthy())
            }
        }
    }
}

