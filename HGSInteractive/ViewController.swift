//
//  ViewController.swift
//  HGSInteractive
//
//  Created by Rohan Patil on 20/12/16.
//  Copyright © 2016 Rohan Patil. All rights reserved.
//

import UIKit

struct cellData
{
    let text : String!
    let text2 : String!
    let image : UIImage!
}


class ViewController: BaseViewController {
    
    //var titleArray = ["Demat","Mutual Funds","National Pension Scheme","IPO / Bonds / FD","Gold Rush","Services"]
    //  var imagesArray = ["demat.png","mutual_fund.png","nps.png","ipo.png","gold_rush.png","services.png"]
    
    @IBOutlet var topBarImageView: UIImageView!
    var arrayOfCellData = [cellData]()
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayOfCellData = [cellData(text : "Berger Paints" , text2 : "Website Responsive" , image : #imageLiteral(resourceName: "teb-portfolio-1")) , cellData(text : "Nakshatra.world" , text2 : "Website Responsive" , image : #imageLiteral(resourceName: "teb-portfolio-2")),cellData(text : "Samuels Jewelers" , text2 : "Social Media" , image : #imageLiteral(resourceName: "teb-portfolio-3")) , cellData(text : "Citytower Real Estate" , text2 : "Website Responsive" , image : #imageLiteral(resourceName: "teb-portfolio-4")), cellData(text : "Akoma" , text2 : "Website Responsive" , image : #imageLiteral(resourceName: "teb-portfolio-5")),cellData(text : "Park-a-car" , text2 : "Mobile App" , image : #imageLiteral(resourceName: "teb-portfolio-6")), cellData(text : "Force Traveller" , text2 : "" , image : #imageLiteral(resourceName: "teb-portfolio-8"))]
        
        addSlideMenuButton(view : self.view)
        
        self.topBarImageView.layer.shadowColor = UIColor.black.cgColor
        self.topBarImageView.layer.shadowOpacity = 0.2
        self.topBarImageView.layer.shadowOffset = CGSize.zero
    }
    
    func numberOfSectionsInCollectionView(_ collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfCellData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAtIndexPath indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CustomCollectionViewCell
        
        cell.moduleIcon.image = arrayOfCellData[indexPath.row].image
        cell.moduleIcon.backgroundColor = UIColor.clear
        cell.nameLabel.text = arrayOfCellData[indexPath.row].text
        cell.siteLabel.text = arrayOfCellData[indexPath.row].text2
        //
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: IndexPath){
        //14 mar
        //let cell : CustomCollectionViewCell = collectionView.cellForItemAtIndexPath(indexPath) as! CustomCollectionViewCell
        
        
        if indexPath.row == 0
        {
            let summaryController = self.storyboard?.instantiateViewController(withIdentifier: "detail_View") as! DetailViewController
            self.navigationController?.pushViewController(summaryController, animated: true)
        }
        else if indexPath.row == 1
        {
            //           let lastTransactionController = self.storyboard?.instantiateViewControllerWithIdentifier("last_trans_view") as! LastTransactionController
            //           self.navigationController?.pushViewController(lastTransactionController, animated: true)
        }
        else if indexPath.row == 2
        {
            //            self.indicator.startAnimating()
            
            //            let wsm : WebserviceClass = WebserviceClass.sharedInstance
            //            wsm.delegates=self
            //            wsm.getReedemGift()
            
            //            timer = NSTimer.scheduledTimerWithTimeInterval(9.0, target: self, selector: #selector(HomeViewController.someSelector), userInfo: nil, repeats: false)
            //timer.fire()
            
        }
        else if indexPath.row == 3
        {
            //let IPOBondsFDController = self.storyboard?.instantiateViewController(withIdentifier: "IPOBondsFD_View") as! IOPBondsFDController
            //self.navigationController?.pushViewController(IPOBondsFDController, animated: true)
        }
        else
        {
            //            let RedeemptionViewController = self.storyboard?.instantiateViewControllerWithIdentifier("redumption_view") as! RedumptionStatusController
            //            self.navigationController?.pushViewController(RedeemptionViewController, animated: true)
        }
    }
    
}


