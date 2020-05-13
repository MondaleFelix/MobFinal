//
//  UserViewController.swift
//  MobFinal
//
//  Created by Mondale on 3/3/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    let nameLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNameLabel()
        nameLabel.sizeToFit()
    }

    private func configureNameLabel(){
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont(name: "Gill Sans", size: 40)
        
        NSLayoutConstraint.activate([
            nameLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.widthAnchor.constraint(equalToConstant: 400)

        ])
    }
    
}
