//
//  CollectionViewCell.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/13.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    func configure(with item: BasicData) {
        backgroundColor = UIColor(named: item.color)
    }
}
