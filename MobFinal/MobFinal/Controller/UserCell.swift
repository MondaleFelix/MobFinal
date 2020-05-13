//
//  UserCell.swift
//  MobFinal
//
//  Created by Mondale on 3/3/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    let nameLabel = UILabel()
    let ageLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureLabels()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureLabels()
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    private func configureLabels(){
        contentView.addSubview(nameLabel)
        contentView.addSubview(ageLabel)
        

        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 25),
            nameLabel.widthAnchor.constraint(equalToConstant: 200),
            
            ageLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            ageLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            ageLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -25),
            ageLabel.widthAnchor.constraint(equalToConstant: 50)
            
        ])
        

    }
}
