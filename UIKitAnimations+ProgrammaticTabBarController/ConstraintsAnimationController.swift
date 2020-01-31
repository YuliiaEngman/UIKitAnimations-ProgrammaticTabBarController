//
//  ConstraintsAnimationController.swift
//  UIKitAnimations+ProgrammaticTabBarController
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class ConstraintsAnimationController: UIViewController {
    
    // we CTL drag Y constraints
    @IBOutlet weak var viewYConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var box: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    @IBAction func animatedViewUp(_ sender: UIButton) {
        // negative value to move up
        
        // ANIMATE BUTTON
        UIView.animate(withDuration: 0.3, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0.0, options: [], animations: {
            sender.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
        }) { (done) in
            sender.transform = CGAffineTransform.identity
        }
        
        // constrains to
        // if we have outlet to the blue box could write the code if view.frame.origin.y == 0 {
       // return }
        
        print(box.frame.origin.y)
        
        if box.frame.origin.y < 100 { return }
        
        
        viewYConstraint.constant -= 100
        
        // when we change the constraints in iOS and we need this change to be animated we only need to animate self.view.layoutIfNeeded and the animation will take place
        
        // layoutIfNeeded will get called as the view is marked "dirty" by iOS, we implementing self.view.layoutIfNeeded in the animation block will cause the animation
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseIn], animations: {
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    @IBAction func animatedViewDown(_ sender: UIButton) {
        // positive value to go down
       
        print(box.frame.origin.y)
               
        if box.frame.origin.y > 400 { return }
        
        viewYConstraint.constant += 100
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 5.0, options: [.curveEaseInOut], animations: {
                   self.view.layoutIfNeeded()
               }, completion: nil)
    }
    

}
