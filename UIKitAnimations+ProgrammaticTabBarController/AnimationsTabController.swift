//
//  AnimationsTabController.swift
//  UIKitAnimations+ProgrammaticTabBarController
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class AnimationsTabController: UITabBarController {
    
    // setting name for tabbaritems
    private lazy var sampleAnimationsVC: SampleAnimationController = {
        let viewcontroller = SampleAnimationController()
        viewcontroller.tabBarItem = UITabBarItem(title: "Sample Animations", image: UIImage(systemName: "1.circle"), tag: 0)
        return viewcontroller
    }()
    
    private lazy var constraiontsAnimationVC: ConstraintsAnimationController = {
        //let viewcontroller = ConstraintsAnimationController()
        //viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        
        // ConstraintsAnimationController instance from stroyboard
        // name comes from the name of the Storybiard file
        
        // Step 1: get instance of storyboard
        let constraintsAnimationStoryboard = UIStoryboard(name: "ConstraintsAnimation", bundle: nil)
        
        // Step 2: instantiate view controller from storybiard instance
        guard let viewcontroller = constraintsAnimationStoryboard.instantiateViewController(identifier: "ConstraintsAnimationController") as? ConstraintsAnimationController else {
            fatalError("could not load ConstraintsAnimationController")
        }
        viewcontroller.tabBarItem = UITabBarItem(title: "Constraints Animations", image: UIImage(systemName: "2.circle"), tag: 1)
        return viewcontroller
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set view controllers doe the Tab Bar
        // in pur app we will have 2 tabs
        viewControllers = [sampleAnimationsVC, constraiontsAnimationVC]
    }
    


}
