//
//  gameBoardCollectionViewCell.swift
//  WordSearch
//
//  Created by Pritesh Nadiadhara on 9/6/20.
//  Copyright © 2020 PriteshN. All rights reserved.
//

import UIKit

class gameBoardCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomGameBoardCell"
    
     let letterLabel : UILabel =  {
        let letterLabel = UILabel()
        letterLabel.text = "A"
        letterLabel.textAlignment = .center
        letterLabel.textColor = .systemBlue
        letterLabel.backgroundColor = .none
        return letterLabel
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView.backgroundColor = .orange
        contentView.addSubview(letterLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        letterLabel.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
