//
//  CustomCollectionViewLayout.swift
//  SampleCollectionViewDemo
//
//  Created by Kaizan on 19/04/16.
//  Copyright © 2016 Kaizan. All rights reserved.
//

import UIKit

class CustomCollectionViewLayout: UICollectionViewFlowLayout {
    
    let bounds = UIScreen.main.bounds
    //  let width1 = bounds.size.width
    let itemWidth =  371
    let itemSpacing: CGFloat = 0
    var layoutInfo: [IndexPath:UICollectionViewLayoutAttributes] = [IndexPath:UICollectionViewLayoutAttributes]()
    var maxXPos: CGFloat = 0
    
    // var custcl:CustomCollectionViewCell!
    override init() {
        super.init()
        setup()//
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        setup()
    }
    
    func setup() {
        
        // iPad 9.7 inch Width = 768.0
        
        print(bounds.size.width)
        
        if bounds.size.width == 375
        {
            self.itemSize = CGSize(width: ((bounds.size.width/2)), height: ((bounds.size.height/3)-21.3))
        }
        else if bounds.size.width == 414
        {
            self.itemSize = CGSize(width: ((bounds.size.width/2)), height: ((bounds.size.height/3)-21.5))
        }
        else if bounds.size.height == 568
        {
            self.itemSize = CGSize(width: ((bounds.size.width/2)), height: ((bounds.size.height/3)-21.3))
        }
        else if bounds.size.width <= 768.0
        {
            self.itemSize = CGSize(width: ((bounds.size.width/3)), height: ((bounds.size.height/3)-21.5))
        }
        else
        {
            self.itemSize = CGSize(width: ((bounds.size.width/3)-30), height: ((bounds.size.height/2)-70))
        }
        print(itemSize.height)
        print(itemSize.width)
        
        self.minimumInteritemSpacing = 0
        self.minimumLineSpacing = itemSpacing
        print(bounds.size.width)
        
        self.sectionInset = UIEdgeInsetsMake(0, 0, 20, 15) //UIEdgeInsetsMake(5, 5, 10, 5)
        
        //        if bounds.size.width == 320
        //        {
        //            self.sectionInset = UIEdgeInsetsMake(5, 5, 10, 5)
        //        }
        //        else if bounds.size.width == 375.0
        //        {
        //            self.sectionInset = UIEdgeInsetsMake(5, 5, 10, 5)
        //        }
        //        else// if bounds.size.width == 414.0
        //        {
        //            self.sectionInset = UIEdgeInsetsMake(5, 5, 10, 5)
        //        }
        
        //UIEdgeInsetsMake(5, 5, 5, 5);
        self.scrollDirection = UICollectionViewScrollDirection.vertical
        
    }
}
