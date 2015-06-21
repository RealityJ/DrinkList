//
//  PersonalCollectionController.swift
//  DrinkList
//
//  Created by Joaquin Castro-Calvo on 6/20/15.
//  Copyright (c) 2015 Joaquin Castro-Calvo. All rights reserved.
//

import UIKit

let reuseIdentifier = "Cell"

var array = ["Ales","Lagers","Stouts","Malts"]
var arrayDescription = ["first","second","third","fourth"]

class PersonalCollectionController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenSize: CGRect = UIScreen.mainScreen().bounds
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: screenSize.height*(0.05), left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: screenSize.width-30, height: screenSize.height*(0.20))
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView!.dataSource = self
        collectionView!.delegate = self
        collectionView!.registerClass(RDCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        self.collectionView?.backgroundColor = UIColor(patternImage: UIImage(named: "brownbackground")!)
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)

        self.collectionView?.alwaysBounceVertical = true
        self.view.addSubview(collectionView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    /*
    //Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> RDCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! RDCell
        
        switch(indexPath.row){
        case 0:
            cell.backgroundColor = UIColor(patternImage: UIImage(named: "ales")!)
        default:
            cell.backgroundColor=UIColor.whiteColor()
        }

        cell.TitleLabel.text = array[indexPath.row]
        cell.TitleLabel.textColor = UIColor.blackColor()
        cell.DescriptionLabel.text = arrayDescription[indexPath.row]
        return cell
    }

    
}