//
//  CustomStackView.swift
//  layout
//
//  Created by kimn on 2021/01/04.
//

import UIKit

class CustomStackView: UIStackView {
    
    required init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        axis = .vertical
        distribution = .fill
        alignment = .fill
        spacing = 20
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
