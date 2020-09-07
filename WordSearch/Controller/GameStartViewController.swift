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
    
    private var lettersArray = ["A","B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        gameboardCollectionView = UICollectionView(frame: .infinite, collectionViewLayout: layout)
        
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

extension GameStartViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: gameBoardCollectionViewCell.identifier, for: indexPath) as! gameBoardCollectionViewCell
        cell.letterLabel.text = lettersArray.randomElement()
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width/14
        let height = width
        
        return CGSize(width: width, height: height)
    }
    
    
}
