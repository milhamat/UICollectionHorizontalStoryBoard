//
//  ViewController.swift
//  UICollectionHorizontalStoryBoard
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 18/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var addButton: UIButton!
    
    var names: [String] = ["Anders", "Kristian"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
        
    }
    @IBAction func addButtonPressed(_ sender: UIButton) {
        names.append("Marlo")
        collection.reloadData()
    }
    
    
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        let category = names[indexPath.row]
        cell.configure(with: category)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let id = indexPath.row
        print(id)
    }
}

