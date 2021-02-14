//
//  ViewModel.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/14.
//

import RxSwift
import RxCocoa

final class BasicViewModel: ViewModel, ViewModelType {
    struct Input {
    }
    
    struct Output {
        let colors: Observable<DataSection>
    }
    
    private let colors = BehaviorRelay<[DataSection]>(value: [DataSection(header: "Colors", items: [])])
    
    func transform(_ input: Input) -> Output {
        <#code#>
    }
}
