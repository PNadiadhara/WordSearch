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
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        contentView.backgroundColor = .orange
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
