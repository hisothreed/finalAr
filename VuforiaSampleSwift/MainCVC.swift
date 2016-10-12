//
//  MainCVC.swift
//  VuforiaSampleSwift
//
//  Created by Hiso3d on 10/11/16.
//  Copyright © 2016 Yoshihiro Kato. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    
    var imagesArray = ["food","build","card"]
    var titles = ["Menu","Buildings","Card"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title : UILabel = {
        
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
            label.text = "EarvLabs"
            label.textColor = UIColor.white
            label.textAlignment = .center
            label.font = UIFont(name: "Helvetica Neue", size: 16)
            label.translatesAutoresizingMaskIntoConstraints = false
            
            return label
        }()
        
        
        
        self.navigationController?.navigationBar.addSubview(title)
        self.navigationController?.navigationBar.isTranslucent = false
        title.centerXAnchor.constraint(equalTo: (self.navigationController?.navigationBar.centerXAnchor)!).isActive = true
        title.centerYAnchor.constraint(equalTo: (self.navigationController?.navigationBar.centerYAnchor)!).isActive = true
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 45/255, green: 62/255, blue: 82/255, alpha: 1)
        
      
        
        // Register cell classes
        self.collectionView!.register(MainCVCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        collectionView?.contentInset = UIEdgeInsetsMake(5, 5, 5, 5)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 3
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MainCVCell
    
        cell.backImage.image = UIImage(named: imagesArray[indexPath.row])
        cell.title.text = titles[indexPath.row]
        
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize.init(width: self.view.frame.width / 2 - 20, height: self.view.frame.width / 2)
    }

    var dataSet = ["food.xml","Building.xml"]
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vuforiaView = ViewController()
        vuforiaView.vuforiaDataSetFile = dataSet[indexPath.row]
        
        present(vuforiaView, animated: true, completion: nil)
        
        
        
    }
    
    
}

    


