//
//  SignUpViewController.swift
//  layout
//
//  Created by kimn on 2021/01/04.
//

import UIKit

class SignUpViewController: UIViewController {

    let basicView = UIView()
    let inputButton = CustomButton()
    let inputStackView = CustomStackView()
    let inputIdTextField = UITextField()
    let inputPasswordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }

}

private extension SignUpViewController {
    func configure() {
        configureLabel()
        configureList()
        configureScrollView()
        configureButton()
    }
    
    func configureLabel() {
        let titleLabel = UILabel()
        titleLabel.numberOfLines = 2
        titleLabel.text = "Hello!\nSignUp Example."
        titleLabel.font = UIFont.boldSystemFont(ofSize: 28.0)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        basicView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: basicView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: basicView.leadingAnchor)
        ])
    }
    
    func configureList() {
        let idStackView = InputStackView()
        let passwordStackView = InputStackView()
        inputIdTextField.placeholder = "Id"
        inputPasswordTextField.placeholder = "Password"
        setupInput(from: idStackView, to: inputIdTextField)
        setupInput(from: passwordStackView, to: inputPasswordTextField)
        inputStackView.addArrangedSubview(idStackView)
        inputStackView.addArrangedSubview(passwordStackView)
        print(inputStackView.frame)
        basicView.addSubview(inputStackView)
        NSLayoutConstraint.activate([
            inputStackView.centerYAnchor.constraint(equalTo: basicView.centerYAnchor),
            inputStackView.leadingAnchor.constraint(equalTo: basicView.leadingAnchor),
            inputStackView.trailingAnchor.constraint(equalTo: basicView.trailingAnchor),
        ])
    }
    
    func configureScrollView() {
        basicView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(basicView)
        NSLayoutConstraint.activate([
            basicView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basicView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            basicView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            basicView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            basicView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.55)
        ])
    }
    
    func configureButton() {
        inputButton.setTitle("Sign In", for: .normal)
        inputButton.backgroundColor = UIColor.lightGray
        basicView.addSubview(inputButton)
        
        NSLayoutConstraint.activate([
            inputButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            inputButton.leadingAnchor.constraint(equalTo: inputStackView.leadingAnchor),
            inputButton.trailingAnchor.constraint(equalTo: inputStackView.trailingAnchor),
            inputButton.topAnchor.constraint(equalTo: inputStackView.bottomAnchor, constant: 60),
            inputButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupInput(from: InputStackView, to: UITextField) {
        let border = CALayer()
        let indexLabel = UILabel()
        
        indexLabel.text = to.placeholder
        indexLabel.textColor = .black
        indexLabel.font = UIFont.boldSystemFont(ofSize: 24)
        
        to.borderStyle = .none
        border.frame = CGRect(x: 0, y: 24, width: view.frame.width - 80, height: 1)
        border.backgroundColor = UIColor.lightGray.cgColor
        to.layer.addSublayer(border)
        
        from.addArrangedSubview(indexLabel)
        from.addArrangedSubview(to)
    }
    
}
