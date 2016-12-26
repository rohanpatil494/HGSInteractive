//
//  MenuViewController.swift
//  AKSwiftSlideMenu
//
//  Created by Ashish on 21/09/15.
//  Copyright (c) 2015 Kode. All rights reserved.
//

import UIKit

protocol SlideMenuDelegate {
    func slideMenuItemSelectedAtIndex(index : Int32)
}

class MenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    /**
    *  Array to display menu options
    */
    @IBOutlet var tblMenuOptions : UITableView!
    
    /**
    *  Transparent button to hide menu
    */
    @IBOutlet var btnCloseMenuOverlay : UIButton!
    
    /**
    *  Array containing menu options
    */
    var arrayMenuOptions = [Dictionary<String,String>]()
    
    /**
    *  Menu button which was tapped to display the menu
    */
    var btnMenu : UIButton!
    
    /**
    *  Delegate of the MenuVC
    */
    var delegate : SlideMenuDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblMenuOptions.tableFooterView = UIView()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateArrayMenuOptions()
    }
    
    func updateArrayMenuOptions()
    {
        arrayMenuOptions.append(["title":"HOME", "icon":""])
        arrayMenuOptions.append(["title":"ABOUT US", "icon":""])
        arrayMenuOptions.append(["title":"CONTACT US", "icon":""])
//        arrayMenuOptions.append(["title":"Specialities", "icon":""])
//        arrayMenuOptions.append(["title":"Online Payment Services", "icon":""])
//        arrayMenuOptions.append(["title":"Online Report Service", "icon":""])
//        arrayMenuOptions.append(["title":"Online Interim Bill", "icon":""])
//        arrayMenuOptions.append(["title":"HelpLine", "icon":""])
//        arrayMenuOptions.append(["title":"Maps & Directions", "icon":""])
//        arrayMenuOptions.append(["title":"Get In Touch", "icon":""])
        
        tblMenuOptions.reloadData()
    }
    
    @IBAction func onCloseMenuClick(_ sender: UIButton)
    {
        btnMenu.tag = 0
        
        if (self.delegate != nil) {
            var index = Int32((sender ).tag)
            if(sender == self.btnCloseMenuOverlay){
                index = -1
            }
            delegate?.slideMenuItemSelectedAtIndex(index: index)
        }
        
        self.view.backgroundColor = UIColor.clear
        
        UIView.animate(withDuration: 0.6, animations: { () -> Void in
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 64, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParentViewController()
        })

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellMenu")!
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        cell.layoutMargins = UIEdgeInsets.zero
        cell.preservesSuperviewLayoutMargins = false
        cell.backgroundColor = UIColor.clear
        
        let lblTitle : UILabel = cell.contentView.viewWithTag(101) as! UILabel
        let imgIcon : UIImageView = cell.contentView.viewWithTag(100) as! UIImageView
        
        imgIcon.image = UIImage(named: arrayMenuOptions[indexPath.row]["icon"]!)
        lblTitle.text = arrayMenuOptions[indexPath.row]["title"]!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let btn = UIButton(type: UIButtonType.custom)
        btn.tag = indexPath.row
        self.onCloseMenuClick(btn)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayMenuOptions.count
    }
    
    private func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView?
    {
        let headerView = UIView()
    
        headerView.frame = CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 80)
        headerView.backgroundColor = UIColor.white
            
        //headerView.backgroundColor = UIColor(red: 227/255.0, green: 227/255.0, blue: 227/255.0, alpha: 1.0)
            
        let backImageView = UIImageView()
        backImageView.frame = CGRect(x: 20, y: 20, width: headerView.frame.size.width-40, height: 40)
        backImageView.backgroundColor = UIColor.white
        backImageView.contentMode = .scaleAspectFit
        backImageView.image = UIImage(named: "Hinduja-Hospital-New-Logo")
        headerView.addSubview(backImageView)
        
        let underLineView = UIImageView()
        underLineView.frame = CGRect(x: 0, y: 79, width: headerView.frame.size.width, height: 0.5)
        underLineView.backgroundColor = UIColor.lightGray
        headerView.addSubview(underLineView)
        
        return headerView
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
}
