//
//  LKCharacterCollectionViewController.swift
//  LK_Tab_Table_Collection
//
//  Created by Rodney Cocker on 6/7/19.
//  Copyright © 2019 RMIT. All rights reserved.
//

import UIKit

private let reuseIdentifier = "LKCell"

class LKCharacterCollectionViewController: UICollectionViewController {
    
    private let viewModel = LKCharacterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cell = sender as? UICollectionViewCell, let indexPath = self.collectionView?.indexPath(for: cell) else {return}
        if let destination = segue.destination as? LKDetailViewController{
            let selectedCharacter = viewModel.getCharacter(byIndex: indexPath.row)
            destination.selectedCharacter = selectedCharacter
            
        }
    }
    
    // MARK: UICollectionViewDataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.characters.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        let imageView = cell.viewWithTag(2000) as? UIImageView
        let characterTitle = cell.viewWithTag(2001) as? UILabel
        
        if let imageView = imageView, let characterTitle = characterTitle{
            imageView.image = UIImage(named: viewModel.characters[indexPath.row].imageName)
            characterTitle.text = viewModel.characters[indexPath.row].rawValue
        }
        return cell
    }
}
