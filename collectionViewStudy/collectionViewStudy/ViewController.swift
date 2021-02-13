//
//  ViewController.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/13.
//

import UIKit

class ViewController: UIViewController {
    private var size = 10
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }

    private func setupCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        UIViewPropertyAnimator(duration: 2, curve: .easeInOut) { [weak self] in
            self?.collectionView.collectionViewLayout.invalidateLayout()
        }.startAnimation()
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 10 * Int.random(in: 5...10), height: 10 * Int.random(in: 5...10))
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        cell.backgroundColor = .blue
        
        return cell
    }
    
}
