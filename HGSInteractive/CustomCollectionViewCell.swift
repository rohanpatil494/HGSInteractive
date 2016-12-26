//
//  CustomCollectionViewCell.swift
//  SampleCollectionViewDemo
//
//  Created by Kaizan on 19/04/16.
//  Copyright © 2016 Kaizan. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var moduleIcon: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var siteLabel: UILabel!
    let boundss = UIScreen.main.bounds
    //var moduleStaticRef:NSString!
    //var moduleId:NSString!//
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.imgUser.translatesAutoresizingMaskIntoConstraints = true
        self.nameLabel.translatesAutoresizingMaskIntoConstraints = true
        self.siteLabel.translatesAutoresizingMaskIntoConstraints = true
        self.moduleIcon.translatesAutoresizingMaskIntoConstraints = true
        
        print(boundss.size.height)
        print(boundss.size.width)
        
        
        if boundss.size.width == 375
        {
            self.imgUser.frame = CGRect(x: -0.2, y: 0, width: 188, height: 204)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-35), width: ((boundss.size.width/2)-10), height: 40)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-10)/2)-110)/2, y: 30, width: 110, height: 110)
        }
        else if boundss.size.height == 568
        {
            self.imgUser.frame = CGRect(x: 0, y: 0, width: 160, height: 170)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-40), width: ((boundss.size.width/2)-10), height: 40)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-20)/2)-95)/2, y: 20, width: 95, height: 95)
        }
        else if boundss.size.width == 414
        {
            self.imgUser.frame = CGRect(x: 0, y: 0, width: 209, height: 227)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-35), width: ((boundss.size.width/2)-10), height: 40)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-20)/2)-120)/2, y: 30, width: 120, height: 120)
        }
        else if boundss.size.height == 480
        {
            self.imgUser.frame = CGRect(x: 0, y: 0, width: 160, height: 150)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-55), width: ((boundss.size.width/2)-10), height: 40)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-20)/2)-75)/2, y: 20, width: 75, height: 75)
        }
        else if boundss.size.width == 768.0
        {
            self.imgUser.frame = CGRect(x: 0, y: 0, width: 384.5, height: 350)
            self.nameLabel.font = UIFont(name: "Helvetica", size: 25)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-200), width: ((boundss.size.width/2)-10), height: 60)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-20)/2)-100)/2, y: 60, width: 100, height: 100)
        }
        else if boundss.size.width == 1024.0
        {
            self.imgUser.frame = CGRect(x: 0, y: 0, width: 512.5, height: 446)
            self.nameLabel.font = UIFont(name: "Helvetica", size: 25)
            self.nameLabel.frame=CGRect(x: 0, y: ((boundss.size.width/2)-210), width: ((boundss.size.width/2)-10), height: 60)
            self.moduleIcon.frame=CGRect(x: (((boundss.size.width-20)/2)-140)/2, y: 90, width: 140, height: 140)
        }
        
        
        else if boundss.size.width == 1366.0
        {
            //self.imgUser.frame = CGRect(x: 0, y: 0, width: 400, height: 446)
            self.nameLabel.font = UIFont(name: "Helvetica", size: 18)
            self.nameLabel.frame=CGRect(x: 35, y: ((boundss.size.width/3)-90), width: ((boundss.size.width/3)-130), height: 30)
            
            self.siteLabel.font = UIFont(name: "HelveticaNeue-Italic", size: 14)
            self.siteLabel.frame=CGRect(x: 35, y: ((boundss.size.width/3)-70), width: ((boundss.size.width/3)-130), height: 30)
            
            self.moduleIcon.frame=CGRect(x: 20, y: 0, width: (boundss.size.width/3)-50, height: boundss.size.height/2-50)
        }
        
        print(self.moduleIcon.frame)
        
        imgUser.backgroundColor = UIColor.clear
        imgUser.layer.borderColor = UIColor.clear.cgColor
        
        //        imgUser.layer.shadowOpacity = 0.5
        //        imgUser.layer.shadowOffset = CGSizeZero
        //        imgUser.layer.shadowRadius = 2
        
        // Initialization code
        //        imgUser.layer.cornerRadius = 6.0
        //        imgUser.clipsToBounds = true
        //        imgUser.layer.borderWidth=2.0
        //        imgUser.layer.borderColor=UIColor.whiteColor().CGColor
    }
}
