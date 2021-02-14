//
//  DataSource.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/14.
//

import RxDataSources
    
final class BasicDataSources: RxCollectionViewSectionedReloadDataSource<DataSection> {
    init() {
        super.init(configureCell: { _, collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell
            else { return UICollectionViewCell() }
            cell.configure(with: item)
            return cell
        })
    }
}
