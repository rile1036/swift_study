//
//  ViewController.swift
//  collectionViewStudy
//
//  Created by kimn on 2021/02/13.
//

import RxSwift
import RxCocoa
import RxDataSources

class ViewController: UIViewController {
    var viewModel: ViewModel?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        bindViewModel()
    }
    
    private func bindViewModel() {
        guard let viewModel = viewModel as? BasicViewModel else { return }
        let dataSource = BasicDataSources()
        
        let input = BasicViewModel.Input()
        let output = viewModel.transform(input)
        
        
    }
}

private extension ViewController {
    func setupCollectionView() {
    }
}
