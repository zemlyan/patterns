//
//  ManagementViewController.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 06.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

class ManagementViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var moneyTextField: UITextField!
    @IBAction func okBtnPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
        let moneyString = moneyTextField.text,
            let moneyAmount = Int(moneyString) else { return }

        Account.shared.name = name
        Account.shared.money = moneyAmount
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
