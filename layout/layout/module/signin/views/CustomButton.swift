//
//  CustomButton.swift
//  layout
//
//  Created by kimn on 2021/01/04.
//

import UIKit

class CustomButton: UIButton {
    
    required init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        alpha = 0.6
        setTitleColor(.black, for: .normal)
        layer.cornerRadius = 20
        translatesAutoresizingMaskIntoConstraints = false
    }
}
