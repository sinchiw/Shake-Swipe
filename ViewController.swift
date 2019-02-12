//
//  ViewController.swift
//  Swipe&Shake
//
//  Created by Wilmer sinchi on 1/11/19.
//  Copyright © 2019 Wilmer sinchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //target is self since we are only using this view controller
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(gesture:)))
        //set which direction you want to swipe from
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        //we have to add the element from where we gonna start swiping from
        //since we dont have any uielement then we gonna have to set up to view or UIview
        self.view.addGestureRecognizer(swipeRight)

        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swipe(gesture:)))
        //set which direction you want to swipe from
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left

        //we have to add the element from where we gonna start swiping from
        //since we dont have any uielement then we gonna have to set up to view or UIview
        self.view.addGestureRecognizer(swipeLeft)
        
    }

    @objc func swipe(gesture: UIGestureRecognizer){
//        print("swipe Right")
        
        //convert the uigestureregonaizer to the ui swipe rgonaize, so we have to work out wiht the gesture varibale
        
        if let swipeGesture  = gesture as? UISwipeGestureRecognizer{
            //almost like the if statement but more neater
            //we look at the variable to see which is true
            switch swipeGesture.direction {
            case UISwipeGestureRecognizer.Direction.right:
                print("user Swipe right")
                
            case UISwipeGestureRecognizer.Direction.left:
                print("user swipe left")
                
            default:
                //default case if neither of those statement is true
                break
            }
        }
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        //look at the event varaible
        
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            print("it shooked")
        }
    }
}

