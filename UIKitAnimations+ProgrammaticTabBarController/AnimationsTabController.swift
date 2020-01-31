//
//  AnimationsTabController.swift
//  UIKitAnimations+ProgrammaticTabBarController
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set view controllers doe the Tab Bar
        // in pur app we will have 2 tabs
        viewControllers = [SampleAnimationController(), ConstraintsAnimationController()]
    }

}
