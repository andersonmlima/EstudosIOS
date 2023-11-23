//
//  PreferenceTableViewCell.swift
//  PreferenceViajai
//
//  Created by Anderson Moura on 12/11/23.
//

import UIKit

class PreferenceTableViewCell: UITableViewCell {

    @IBOutlet weak var preferenceLabel: UILabel!
    @IBOutlet weak var preferenceSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
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
