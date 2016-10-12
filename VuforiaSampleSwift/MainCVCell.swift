//
//  MainCVCell.swift
//  VuforiaSampleSwift
//
//  Created by Hiso3d on 10/11/16.
//  Copyright © 2016 Yoshihiro Kato. All rights reserved.
//

import UIKit

class MainCVCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var cellTitle : UILabel!
    var cellImage : UIImageView!
    
    let backView : UIView = {
        
        let view = UIView()
        view.backgroundColor = UIColor(red: 45/255, green: 62/255, blue: 82/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
        
    }()
    
    let backImage : UIImageView = {
        
        var imgview = UIImageView()
        imgview.translatesAutoresizingMaskIntoConstraints = false
        return imgview
        
    }()
    
    
    let title : UILabel = {
        
        let ttl = UILabel()
        ttl.translatesAutoresizingMaskIntoConstraints = false
        ttl.font = UIFont(name: "Helvetica Neue", size: 20)
        ttl.textColor = UIColor.orange
        ttl.textAlignment = .center
        ttl.text = "test"
        return ttl
        
    }()
    
    func setUpViews() {
        
        self.addSubview(backImage)
        self.addSubview(backView)
        backView.addSubview(title)
        
        
            
            
            backView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
            backView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
            backView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
            backView.heightAnchor.constraint(equalToConstant: self.frame.height / 3).isActive = true
            
            backImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0).isActive = true
            backImage.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
            backImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
            backImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
            
            title.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 0).isActive = true
            title.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: 0).isActive = true
            title.topAnchor.constraint(equalTo: backView.topAnchor, constant: 0).isActive = true
            title.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: 0).isActive = true
            
        
        
        
        
        
    }
    
    
    
    
    
}
