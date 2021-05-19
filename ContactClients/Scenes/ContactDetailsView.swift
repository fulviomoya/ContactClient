//
//  ContactDetailsViewController.swift
//  ContactClients
//
//  Created by Fulvio A. Moya on 19/5/21.
//

import UIKit

class ContactDetailsView: UIViewController {
    private var viewModel: ContactDetailViewModel!
    
    let scrollView: UIScrollView = {
        let v = UIScrollView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        return v
    }()
    
    let stackView: UIStackView = {
        let v = UIStackView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        return v
    }()
    
    let barView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 3
        view.clipsToBounds = true
        view.backgroundColor = .clear
        return view
    }()
    
    let avatarImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "profileAvatarImage")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.mainBlack
        label.text = String.empty
        return label
    }()
    
    let helloLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Poppins-Light", size: 18)
        label.textColor = UIColor.mainBlack
        label.numberOfLines = 0
        label.text = String.getLocalizable(ContactDetailsView.self, for: "hello")
        return label
    }()
    
    let editNameButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "profileEditIcon"), for: .normal)
        return button
    }()
    
    let dashedView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.clipsToBounds = true
        view.backgroundColor = .clear
        return view
    }()
    
    let instructionsLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Roboto-Regular", size: 14)
        label.textColor = UIColor.unselectedGray
        label.text = String.getLocalizable(ContactDetailsView.self, for: "instructions")
        label.textAlignment = .center
        return label
    }()
    
    let addressLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Roboto-Regular", size: 14)
        label.textColor = UIColor.mainBlack
        label.text = String.getLocalizable(ContactDetailsView.self, for: "email")
        return label
    }()
    
    let addressValue: UIButton = {
        let v = UIButton(frame: .zero)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .clear
        v.semanticContentAttribute = .forceRightToLeft
        v.setImage(UIImage(named: "arrowRightIcon"), for: .normal)
        v.imageEdgeInsets = UIEdgeInsets(top: 2, left: 0, bottom: 0, right: -10)
        v.contentHorizontalAlignment = .right
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = ContactDetailViewModel()
        
        view.backgroundColor = .white
        view.addSubview(scrollView)
        stackView.addSubviews(barView, avatarImageView, nameLabel, helloLabel, editNameButton, dashedView,
                              instructionsLabel, addressLabel, addressValue)
        scrollView.addSubview(stackView)
        
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor, multiplier: 1)
        ])
        
        NSLayoutConstraint.activate([
            barView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 5),
            barView.widthAnchor.constraint(equalToConstant: 42),
            barView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            barView.heightAnchor.constraint(equalToConstant: 6)
        ])
        
        NSLayoutConstraint.activate([
            avatarImageView.widthAnchor.constraint(equalToConstant: 45),
            avatarImageView.heightAnchor.constraint(equalToConstant: 50),
            avatarImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35),
            avatarImageView.topAnchor.constraint(equalTo: barView.bottomAnchor, constant: 41)
        ])
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: avatarImageView.topAnchor),
            helloLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 25),
            helloLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 25)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: helloLabel.bottomAnchor, constant: 3),
            nameLabel.leadingAnchor.constraint(equalTo: helloLabel.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -55),
            nameLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 31)
        ])
        
        NSLayoutConstraint.activate([
            editNameButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor),
            editNameButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -35),
            editNameButton.heightAnchor.constraint(equalToConstant: 16),
            editNameButton.widthAnchor.constraint(equalToConstant: 16)
        ])
        
        NSLayoutConstraint.activate([
            dashedView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 40),
            dashedView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35),
            dashedView.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -35),
            dashedView.heightAnchor.constraint(equalToConstant: 1)
        ])
        
        NSLayoutConstraint.activate([
            instructionsLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 70),
            instructionsLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35),
            instructionsLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -35)
        ])
    
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 31),
            addressLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 35)
        ])
        
        NSLayoutConstraint.activate([
            addressValue.centerYAnchor.constraint(equalTo: addressLabel.centerYAnchor),
            addressValue.leadingAnchor.constraint(equalTo: addressLabel.trailingAnchor, constant: 20),
            addressValue.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -45),
            addressValue.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}
