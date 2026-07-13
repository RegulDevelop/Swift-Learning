//
//  ViewController.swift
//  p12m2|2
//
//  Created by Anton Tyurin on 13.07.2026.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var emailTextField = createTextField(placeholder: "Email")
    private lazy var topicTextField = createTextField(placeholder: "Тема")
    
    private let lionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "lion")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 30
        return imageView
    }()
    
    private let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Сообщение"
        label.textColor = .black
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let contentLabel: UILabel = {
        let label = UILabel()
        label.text = "Содержимое"
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private let textEdit: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .TF
        textView.layer.cornerRadius = 25
        textView.font = .systemFont(ofSize: 16, weight: .regular)
        textView.textContainerInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        textView.textContainer.lineFragmentPadding = 0
        return textView
    }()
    
    private let sendButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
        button.setTitle("Отправить", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 25
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupConstraints()
        
    }
    
    private func setupViews() {

        [lionImageView, messageLabel, emailTextField, topicTextField, contentLabel, textEdit, sendButton].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }

    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            lionImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lionImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            lionImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 26),
            lionImageView.heightAnchor.constraint(equalToConstant: 239),
            
            messageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            messageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            messageLabel.topAnchor.constraint(equalTo: lionImageView.bottomAnchor, constant: 23),
            
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailTextField.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 20),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            
            topicTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            topicTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            topicTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 19),
            topicTextField.heightAnchor.constraint(equalToConstant: 50),
            
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -39),
            contentLabel.topAnchor.constraint(equalTo: topicTextField.bottomAnchor, constant: 23),
            
            textEdit.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textEdit.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textEdit.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 8),
            textEdit.heightAnchor.constraint(equalToConstant: 134),
            
            sendButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sendButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            sendButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    private func createTextField(placeholder: String) -> UITextField {
        
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.layer.cornerRadius = 25
        textField.backgroundColor = .TF
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 19, height: 0))
        textField.leftViewMode = .always
        textField.rightView = UIView(frame: CGRect(x: 0, y: 0, width: 19, height: 0))
        textField.rightViewMode = .always
        
        return textField
    }

}



