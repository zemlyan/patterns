//
//  PaymentViewController.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 06.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

class PaymentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = Account.shared.name
        moneyLabel.text = String(Account.shared.money)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
