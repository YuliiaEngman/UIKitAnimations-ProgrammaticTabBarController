//
//  SampleAnimationController.swift
//  UIKitAnimations+ProgrammaticTabBarController
//
//  Created by Yuliia Engman on 1/31/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import UIKit

class SampleAnimationController: UIViewController {
    
    private let sampleAnimationsView = SampleAnimationView()
    
    override func loadView() {
        view = sampleAnimationsView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    
    // want that is to start growing just when we load this screen
    // make it bigger
    // translate - move from A to B
    // rotate (see rotation cheat sheet)
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        scaleAnimation()
        //pulsatingAnimation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        scaleAnimation()
    }
    
    // you can animated bounds of the object
    // duration in seconds: 3 sec = 3.0
    private func scaleAnimation() {
        
        // properties we could animate:
        /*
         - alpha
         - corner radius
         - position
         -center
         -transition
         -color
         -shadow
         -opacity
         -transform: scale, rotate, translate
         */
    
        // any transform value of 1.0 represents the identity of the view
//        UIView.animate(withDuration: 3) { // 0.3 = 1/3 of a second
//          self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
//            // alpha - it will be faded (default value is 1.0)
//            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
//        }
        
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [], animations: {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 5.0, y: 5.0)
            // alpha - it will be faded (default value is 1.0)
            self.sampleAnimationsView.pursuitLogo.alpha = 0.0
        }) { (done) in
            // done is a completinon and expects some name (it could be reasult)
            // gets called after onitial animation is done
            UIView.animate(withDuration: 0.5){
                // here we set it back to show
                self.sampleAnimationsView.swiftLogo.isHidden = false
                self.sampleAnimationsView.swiftLogo.layer.cornerRadius = self.sampleAnimationsView.swiftLogo.bounds.size.width / 2.0
            }
        }
    }
    
    private func pulsatingAnimation() {
        UIView.animate(withDuration: 0.3, delay: 0.0, options: [.repeat, .autoreverse], animations: {
        // animation block
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
            
        }) { (done) in
        // code to be executed after animation is complete
        // options - you can reset view's values
        // options - create another animation
            
            UIView.animate(withDuration: 3.0) {
            self.sampleAnimationsView.pursuitLogo.transform = CGAffineTransform.identity // .identity = restires back to original state
        
        // NB: if you want to go beyond creating an animation in this completion handler the better choice would be animatedKeyFrames()
      }
    }
    }

}
