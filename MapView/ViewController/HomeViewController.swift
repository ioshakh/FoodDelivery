//
//  HomeViewController.swift
//  MapView
//
//  Created by shahzod on 3/2/21.
//  Copyright © 2021 shahzod. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource {
    
    
    
    @IBOutlet weak var collectionView: UICollectionView!
     var item : Array<Items> = Array()
   
    
    
    @IBOutlet weak var collectionView2: UIView!
    
    
   
    @IBOutlet weak var collectionView3: UIView!
    
   
    
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        // Do any additional setup after loading the view.
    }
    
    

   // Mark : - Methods
    
    func initViews() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        
        self.collectionView.register(UINib(nibName: "ItemCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell")
        
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            let screenSize : CGRect = UIScreen.main.bounds
            let cellWidth  = screenSize.width
            flowLayout.itemSize = CGSize(width: cellWidth , height: cellWidth)
         
        
        }
        
        self.collectionView.register(UINib(nibName: "2CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "myCell2")
        
        if let flowLayout = collectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
                   let screenSize : CGRect = UIScreen.main.bounds
                   let cellWidth  = screenSize.width
                   flowLayout.itemSize = CGSize(width: cellWidth , height: cellWidth)
                
               
               }
        
        item.append(Items(image: "1"))
        item.append(Items(image: "2"))
        item.append(Items(image: "3"))
        item.append(Items(image: "4"))
        item.append(Items(image: "5"))
        item.append(Items(image: "1"))
         
    }
    
    
    
    //Mark : - Collection View
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let result  = item[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath ) as! ItemCollectionViewCell
      
        
        cell.imageView.image = UIImage(named: result.image!)
        
        
        return cell
        
        
    }

    

}
