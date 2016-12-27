//
//  DetailViewController.swift
//  HGSInteractive
//
//  Created by Rohan Patil on 27/12/16.
//  Copyright © 2016 Rohan Patil. All rights reserved.
//

import UIKit

struct ImageData
{
    let text  : String!
    let image : UIImage!
}
class DetailViewController: BaseViewController {
    var index = 0
    @IBOutlet var detailImageView: UIImageView!
    var arrayOfCellData = [ImageData]()
    @IBOutlet var menuText: UILabel!
    @IBOutlet var imageVIIew: UIImageView!
    @IBOutlet var topBarImageView: UIImageView!
    
    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        addSlideMenuButton(view : self.view)
        
        arrayOfCellData = [ImageData(text : "Berger Paints |  website responsive" ,image : #imageLiteral(resourceName: "option01-Berger")) , ImageData(text : "Nakshatra.world |  website responsive" ,image : #imageLiteral(resourceName: "portfolio-app-Nakshatra")),ImageData(text : "Samuels Jewelers | social media" ,image : #imageLiteral(resourceName: "Samuels")) , ImageData(text : "Citytower Real Estate |  website responsive" ,image : #imageLiteral(resourceName: "City-Tower")), ImageData(text : "Akoma |  website responsive" ,image : #imageLiteral(resourceName: "Akoma")),ImageData(text : "Park-a-car |  Mobile App" ,image : #imageLiteral(resourceName: "Park-A-Car")), ImageData(text : "Force Traveller" ,image : #imageLiteral(resourceName: "Travller"))]
        
        
        print((arrayOfCellData[index].image?.size.height)! as CGFloat)
        print((arrayOfCellData[index].image.size.width) as CGFloat)
        
        detailImageView.frame = CGRect.init(x: 0, y: 0, width: arrayOfCellData[index].image.size.width, height: arrayOfCellData[index].image.size.height)
        detailImageView.image = arrayOfCellData[index].image
        menuText.text = arrayOfCellData[index].text
        
        self.imageVIIew.layer.shadowColor = UIColor.black.cgColor
        self.imageVIIew.layer.shadowOpacity = 0.2
        self.imageVIIew.layer.shadowOffset = CGSize.zero
        
        self.topBarImageView.layer.shadowColor = UIColor.black.cgColor
        self.topBarImageView.layer.shadowOpacity = 0.2
        self.topBarImageView.layer.shadowOffset = CGSize.zero
        
        
        scrollView.contentSize = CGSize.init(width: (detailImageView.image?.size.width)!, height: (detailImageView.image?.size.height)!)
        
        
    }
    
    @IBAction func BackwordImage(_ sender: Any)
    {
        if index == 0
        {
            index = 7
            index = index - 1
            detailImageView.image = arrayOfCellData[index].image
            menuText.text = arrayOfCellData[index].text
        }
        else
        {
            index = index - 1
            detailImageView.image = arrayOfCellData[index].image
            menuText.text = arrayOfCellData[index].text
        }
    }
    
    @IBAction func ForwordImage(_ sender: Any)
    {
        if index == 6
        {
            index = 0
            detailImageView.image = arrayOfCellData[index].image
            menuText.text = arrayOfCellData[index].text
        }
        else
        {
            index = index + 1
            detailImageView.image = arrayOfCellData[index].image
            menuText.text = arrayOfCellData[index].text
        }
    }
}


