//
//  MainViewController.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 07.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

class Main2ViewController: UIViewController {
    
    
    
    @IBAction func greenButtonPressed (_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name.colorChanged,
                                        object: nil,
                                        userInfo: ["color" : UIColor.green])
        view.backgroundColor = UIColor.green
    }
    
    @IBAction func redButtonPressed (_ sender: UIButton) {
        NotificationCenter.default.post(name: Notification.Name.colorChanged,
                                        object: nil,
                                        userInfo: ["color" : UIColor.red])
        view.backgroundColor = UIColor.red
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
