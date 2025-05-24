//
//  UserCell.swift
//  VIPER_designpattern_simple_application
//
//  Created by Sathish Pullagura on 24/05/25.
//

import Foundation
import UIKit

class UserCell: UITableViewCell {
    static let identifier = "UserCell"
    // Add a label as computed property
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Expose a way to configure cell content
    func configure(with text: String) {
        myLabel.text = text
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    
        contentView.addSubview(myLabel)
        
        // Constraints for label inside cell
        NSLayoutConstraint.activate([
            myLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            myLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            myLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -16)
        ])
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
