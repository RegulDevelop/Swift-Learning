//
//  ViewController.swift
//  p12m2|1
//
//  Created by Anton Tyurin on 12.07.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let avatarImageView = UIImageView(image: UIImage(named: "avatar"))
        avatarImageView.frame = CGRect(x: 40, y: 116, width: 114, height: 114)
        avatarImageView.contentMode = .scaleAspectFit
        view.addSubview(avatarImageView)
        
        let nameLabel = UILabel(frame: CGRect(x: 174, y: 136, width: 200, height: 19))
        nameLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        nameLabel.text = "Имя Фамилия"
        view.addSubview(nameLabel)
        
        let ageLabel = UILabel(frame: CGRect(x: 174, y: 166, width: 52, height: 19))
        ageLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        ageLabel.text = "30 лет"
        view.addSubview(ageLabel)
        
        let actionEditButton = UIAction { [weak self] _ in
            let alert = UIAlertController(
                title: "Спасибо за урок!",
                message: nil,
                preferredStyle: .actionSheet
            )

            alert.addAction(
                UIAlertAction(
                    title: "Закрыть",
                    style: .cancel
                )
            )

            self?.present(alert, animated: true)
        }
        
        let editButton = UIButton(frame: CGRect(x: 40, y: 280, width: 321, height: 53), primaryAction: actionEditButton)
        editButton.setTitle("Редактировать профиль", for: .normal)
        editButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        editButton.backgroundColor = .black
        editButton.tintColor = .white
        view.addSubview(editButton)
        
        let aboutTitleLabel = UILabel(frame: CGRect(x: 40, y: 370, width: 54, height: 19))
        aboutTitleLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        aboutTitleLabel.text = "О себе"
        view.addSubview(aboutTitleLabel)
        
        let aboutLabel = UILabel(frame: CGRect(x: 40, y: 400, width: 321, height: 124))
        aboutLabel.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        aboutLabel.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
        aboutLabel.numberOfLines = 0
        view.addSubview(aboutLabel)
        
        let deleteButton = UIButton(frame: CGRect(x: 40, y: 540, width: 321, height: 53))
        deleteButton.setTitle("Удалить данные", for: .normal)
        deleteButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        deleteButton.backgroundColor = .red
        deleteButton.tintColor = .white
        view.addSubview(deleteButton)
        
        let landscapeImageView = UIImageView(image: UIImage(named: "landscape"))
        landscapeImageView.frame = CGRect(x: 40, y: 620, width: 321, height: 185)
        landscapeImageView.contentMode = .scaleAspectFit
        view.addSubview(landscapeImageView)
        
    }

}

#Preview {
    ViewController()
}

