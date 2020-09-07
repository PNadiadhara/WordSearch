//
//  GameStartViewController.swift
//  WordSearch
//
//  Created by Pritesh Nadiadhara on 9/6/20.
//  Copyright © 2020 PriteshN. All rights reserved.
//

import UIKit

class GameStartViewController: UIViewController {
    
    private var gameboardCollectionView: UICollectionView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        gameboardCollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        guard let gameboardCollectionView = gameboardCollectionView else {
            return
        }
        gameboardCollectionView.register(gameBoardCollectionViewCell.self, forCellWithReuseIdentifier: gameBoardCollectionViewCell.identifier)
        gameboardCollectionView.dataSource = self
        gameboardCollectionView.delegate = self
        view.addSubview(gameboardCollectionView)
        gameboardCollectionView.frame = view.bounds
        
        
        
    }
    

    
}

extension GameStartViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gameBoardCollectionViewCell.identifier, for: indexPath)
        cell.contentView.backgroundColor = .blue
        return cell
    }
    
    
}
