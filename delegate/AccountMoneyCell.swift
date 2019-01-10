//
//  AccountMoneyCell.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 08.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

protocol AccountMoneyCellDelegate: class {
    func sendButtonPressed(to name: String?, amount: Int)
}

class AccountMoneyCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var amountTextField: UITextField!
    
    public weak var delegate: AccountMoneyCellDelegate?
    
    @IBAction func sendButtonPressed() {
        delegate?.sendButtonPressed(to: nameLabel.text, amount: Int(amountTextField.text!)!)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
