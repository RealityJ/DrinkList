//
//  RDCell.swift
//
//
//  Created by Joaquin Castro-Calvo on 6/20/15.
//
//

import UIKit

class RDCell: UICollectionViewCell {
    
    var TitleLabel = UILabel();
    var DescriptionLabel = UILabel();
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let textFrame = CGRect(x: frame.size.width*(0.1), y: 0, width: frame.size.width, height: frame.size.height)
        TitleLabel = UILabel(frame: textFrame)
        TitleLabel.font = UIFont(name: TitleLabel.font.fontName, size: 20)
        TitleLabel.textColor = UIColor.blackColor()
        contentView.addSubview(TitleLabel)
        
        let DescriptionFrame = CGRect(x: 100, y: 500, width: frame.size.width, height: frame.size.height)
        DescriptionLabel = UILabel(frame: textFrame)
        DescriptionLabel.font = UIFont.systemFontOfSize(UIFont.smallSystemFontSize())
        DescriptionLabel.textAlignment = .Center
        contentView.addSubview(DescriptionLabel)
        
        self.layer.cornerRadius = 5
}

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
