//
//  ViewModel.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/14.
//

import RxSwift
import RxCocoa

protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    func transform(_ input: Input) -> Output
}

class ViewModel: NSObject {
    override init() {
        super.init()
    }
}
