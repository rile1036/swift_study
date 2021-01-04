//
//  ViewController.swift
//  layout
//
//  Created by kimn on 2021/01/04.
//

import UIKit

class ViewController: UIViewController {
    let stackView = CustomStackView()
    let signButton = CustomButton()
    let signFacebookButton = CustomButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

}

private extension ViewController {
    func configure() {
        configureBackground()
        configureButton()
        configureLabel()
    }
    
    func configureBackground() {
        guard let backgroundImage = UIImage(named: "mount.png") else { return }
        view.backgroundColor = UIColor(patternImage: backgroundImage)
    }
    
    func configureButton() {
        signButton.setTitle("Sign Up", for: .normal)
        signFacebookButton.setTitle("Sign in with Facebook", for: .normal)
        
        stackView.addArrangedSubview(signButton)
        stackView.addArrangedSubview(signFacebookButton)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            signButton.heightAnchor.constraint(equalTo: signFacebookButton.heightAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 80),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)
        ])
    }
    
    func configureLabel() {
        let titleLabel = UILabel()
        titleLabel.text = "AutoLayout"
        titleLabel.textColor = .white
        titleLabel.font = UIFont.boldSystemFont(ofSize: 32.0)
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 120)
        ])
    }
}
