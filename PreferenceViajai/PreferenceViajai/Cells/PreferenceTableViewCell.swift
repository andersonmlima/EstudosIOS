//
//  PreferenceTableViewCell.swift
//  PreferenceViajai
//
//  Created by Anderson Moura on 12/11/23.
//

import UIKit

class PreferenceTableViewCell: UITableViewCell {

    @IBOutlet weak var preferenceLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var selectLabel: UILabel!
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var afterButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configElements() {
        preferenceLabel.font = UIFont.boldSystemFont(ofSize: 26)
        preferenceLabel.textColor = .black
        subTitleLabel.font = UIFont.systemFont(ofSize: 16)
        subTitleLabel.textColor = .systemGray2
        selectLabel.font = UIFont.boldSystemFont(ofSize: 22)
        selectLabel.textColor = .black
    }
    
    private func configureLayout() {
        preferenceLabel.textAlignment = .left
        preferenceSwitch.contentHorizontalAlignment = .right
        
        preferenceLabel.translatesAutoresizingMaskIntoConstraints = false
        preferenceSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(preferenceLabel)
        contentView.addSubview(preferenceSwitch)
        
        NSLayoutConstraint.activate([
            preferenceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            preferenceLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            
            preferenceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            preferenceSwitch.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
}
