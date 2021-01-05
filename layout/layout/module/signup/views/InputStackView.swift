//
//  InputStackView.swift
//  layout
//
//  Created by kimn on 2021/01/05.
//

import UIKit

class InputStackView: UIStackView {

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
        spacing = 12
        translatesAutoresizingMaskIntoConstraints = false
    }

}
