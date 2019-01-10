//
//  Account.swift
//  patterns
//
//  Created by Oleksii Yelnykov on 07.01.2019.
//  Copyright © 2019 Oleksii Yelnykov. All rights reserved.
//

import Foundation

class Account {
    private init() { }
    
    public static let shared = Account()
    var name = ""
    var money = 0
    var id = 0
    
    
}
