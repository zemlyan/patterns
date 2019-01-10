//
//  AnotherViewController.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 09.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {

    @IBOutlet weak var totalMoneyLabel: UILabel!
    @IBOutlet weak var friendsTableView: UITableView! {
        didSet {
            friendsTableView.delegate = self
            friendsTableView.dataSource = self
        }
    }
    
    let friends = ["Bob", "Alice", "Mike"]
    
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

extension AnotherViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MoneyCell", for: indexPath) as? AccountMoneyCell else { return UITableViewCell()}
        
        cell.nameLabel.text = friends[indexPath.row]
        cell.delegate = self
        
        return cell
    }
    
    
}

extension AnotherViewController: AccountMoneyCellDelegate {
    func sendButtonPressed(to name: String?, amount: Int) {
        guard let name = name,
        friends.contains(name) else { return }
        
        if Account.shared.money >= amount {
            Account.shared.money -= amount
            totalMoneyLabel.text = String(Account.shared.money)
        } else {
            let alert = UIAlertController(title: "Error", message: "Not enough money", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okBtn)
            present(alert, animated: true)
        }
    }
    
    
}
