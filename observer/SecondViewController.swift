//
//  SeccondViewController.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 07.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import UIKit

class SeccondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(changeColor(notification:)), name: Notification.Name.colorChanged, object: nil)
        
    }
    
    @objc func changeColor(notification: Notification) {
        let color = notification.userInfo?["color"] as? UIColor ?? UIColor.blue
        
        view.backgroundColor = color
        print(color)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: Notification.Name.colorChanged, object: nil)
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
