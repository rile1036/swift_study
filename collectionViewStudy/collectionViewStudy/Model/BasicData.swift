//
//  BasicData.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/14.
//

import RxDataSources

struct DataSection {
    var header: String
    var items: [Item]
}

struct BasicData: Decodable {
    let color: String
}

extension DataSection: SectionModelType {
    typealias Item = BasicData
    
    init(original: DataSection, items: [Item]) {
        self = original
        self.items = items
    }
}
