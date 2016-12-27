//
//  BaseViewController.swift
//  AKSwiftSlideMenu
//
//  Created by Ashish on 21/09/15.
//  Copyright (c) 2015 Kode. All rights reserved.
//

import UIKit


class BaseViewController: UIViewController, SlideMenuDelegate  {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ////////
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func slideMenuItemSelectedAtIndex(index: Int32) {
        let topViewController : UIViewController = self.navigationController!.topViewController!
        print("View Controller is : \(topViewController) \n", terminator: "")
        switch(index){
        case 0:
            //print("Home\n", terminator: "")

            self.openViewControllerBasedOnIdentifier(strIdentifier: "home_page")
            
            break
        case 1:
            print("doctor_search\n", terminator: "")
            
           // self.openViewControllerBasedOnIdentifier("doctor_search")
            
            break
        case 2:
            print("doctor_schedule\n", terminator: "")
            
          //  self.openViewControllerBasedOnIdentifier("doctor_appointment")
            
            break
        case 3:
            print("doctor_appointment\n", terminator: "")
            
           // self.openViewControllerBasedOnIdentifier("speciality_view")
            
            break
        case 4:
            
         //   let defaults = NSUserDefaults.standardUserDefaults()
          //  defaults.setObject("Online Payment", forKey: "online")
         //   defaults.synchronize()
         //   self.openView11ControllerBasedOnIdentifier("onlineview")
            
            break
            
        case 5:
    
//            let defaults = NSUserDefaults.standardUserDefaults()
//            defaults.setObject("Online Report", forKey: "online")
//            defaults.synchronize()
//            self.openView11ControllerBasedOnIdentifier("onlineview")
            
            break
            
        case 6:
//            let defaults = NSUserDefaults.standardUserDefaults()
//            defaults.setObject("Online Interim Bill", forKey: "online")
//            defaults.synchronize()

         //   self.openView11ControllerBasedOnIdentifier("onlineview")
            break
            
        case 7:
            print("doctor_search\n", terminator: "")
            
        //    self.openViewControllerBasedOnIdentifier("helpline_view")

            break
        case 8:
            print("doctor_schedule\n", terminator: "")
            
         //   self.openViewControllerBasedOnIdentifier("map_view")
            
            break
        case 9:
            print("doctor_appointment\n", terminator: "")
            
         //   self.openViewControllerBasedOnIdentifier("getintouch_view")
            
            break
        default:
            print("default\n", terminator: "")
        }
    }
    
    func openViewControllerBasedOnIdentifier(strIdentifier:String){
        let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: strIdentifier)
        
      //  let topViewController : UIViewController = self.navigationController!.topViewController!
        
       // if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
       //     print("Same VC")
      //  } else {
            self.navigationController!.pushViewController(destViewController, animated: true)
        //}
    }
    
    
    func addSlideMenuButton(view : UIView){
        let btnShowMenu = UIButton(type: UIButtonType.custom)
        btnShowMenu.setImage(UIImage(named: "Menu_New.png"), for: UIControlState.normal)
        btnShowMenu.frame = CGRect(x: 20, y: 35, width: 40, height: 30)
        btnShowMenu.addTarget(self, action: #selector(onSlideMenuButtonPressed(sender:)), for: UIControlEvents.touchUpInside)
        view.addSubview(btnShowMenu)
        // let customBarItem = UIBarButtonItem(customView: btnShowMenu)
        // self.navigationItem.leftBarButtonItem = customBarItem;
    }


//    func addSlideMenuButtonWithBack(){
//        
//        let backB = UIButton()//(type: UIButtonType.Custom)
//        backB.frame = CGRectMake(0, 7, 30, 26)
//        backB.setImage(UIImage(named:"Back_New.png"), forState: UIControlState.Normal)
//        backB.backgroundColor = UIColor.clearColor()
//        backB.addTarget(self, action: #selector(BaseViewController.backAction), forControlEvents: UIControlEvents.TouchUpInside)
//        let back: UIBarButtonItem = UIBarButtonItem(customView: backB)
//    
//        let btnShowMenu = UIButton(type: UIButtonType.Custom)
//        btnShowMenu.setImage(UIImage(named: "Menu_New.png"), forState: UIControlState.Normal)
//        btnShowMenu.frame = CGRectMake(-70, 0, 30, 30)
//        btnShowMenu.addTarget(self, action: #selector(BaseViewController.onSlideMenuButtonPressed(_:)), forControlEvents: UIControlEvents.TouchUpInside)
//        let menuBtn = UIBarButtonItem(customView: btnShowMenu)
//        
//        let buttons : NSArray = [back,menuBtn]
//        self.navigationItem.leftBarButtonItems = buttons as? [UIBarButtonItem]
//
//    }
    
//    func backAction()
//    {
//        self.navigationController?.popViewController(animated: true)
//    }
    
//    func defaultMenuImage() -> UIImage {
//        var defaultMenuImage = UIImage()
//        
//        UIGraphicsBeginImageContextWithOptions(CGSizeMake(30, 22), false, 0.0)
//        
//        UIColor.black.setFill()
//        UIBezierPath(rect: CGRect(x: 0, y: 3, width: 30, height: 1).fill,
//        UIBezierPath(rect: CGRectMake(0, 10, 30, 1)).fill()
//        UIBezierPath(rect: CGRectMake(0, 17, 30, 1)).fill()
//        
//        UIColor.whiteColor().setFill()
//        UIBezierPath(rect: CGRectMake(0, 4, 30, 1)).fill()
//        UIBezierPath(rect: CGRectMake(0, 11,  30, 1)).fill()
//        UIBezierPath(rect: CGRectMake(0, 18, 30, 1)).fill()
//        
//        defaultMenuImage = UIGraphicsGetImageFromCurrentImageContext()!
//        
//        UIGraphicsEndImageContext()
//       
//        return defaultMenuImage;
//    }
    
    
    func onSlideMenuButtonPressed(sender : UIButton){
        
        if (sender.tag == 10)
        {
            // To Hide Menu If it already there
            self.slideMenuItemSelectedAtIndex(index: -1);
            
            sender.tag = 0;
            
            let viewMenuBack : UIView = view.subviews.last!
            viewMenuBack.backgroundColor = UIColor.clear
            
            UIView.animate(withDuration: 0.6, animations: { () -> Void in
                var frameMenu : CGRect = viewMenuBack.frame
                frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
                viewMenuBack.frame = frameMenu
                viewMenuBack.layoutIfNeeded()
                viewMenuBack.backgroundColor = UIColor.clear
            }, completion: { (finished) -> Void in
                viewMenuBack.removeFromSuperview()
            })
            
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        
        let menuVC : MenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        menuVC.btnMenu = sender
        menuVC.delegate = self
        self.view.addSubview(menuVC.view)
        self.addChildViewController(menuVC)
        menuVC.view.layoutIfNeeded()
        
        
        menuVC.view.frame =  CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 80, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-80)
        
        UIView.animate(withDuration: 0.6, animations: { () -> Void in
            menuVC.view.frame = CGRect(x: 0 , y: 80, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height-80)
            
            //  menuVC.view.frame=CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height);
            sender.isEnabled = true
        }, completion:{ (complete: Bool) in
            
            menuVC.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
            return
        })
    }
    
}
