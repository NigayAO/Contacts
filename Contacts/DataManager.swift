//
//  DataManager.swift
//  Contacts
//
//  Created by Alik Nigay on 03.02.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "John", "Aaron", "Steven", "Sharon", "Nikola",
        "Ted", "Bruc", "Allan", "Carl"
    ]
    let surNames = [
        "Murphy", "Jenkin", "Lee", "Stuart", "Parker",
        "Stark", "Butcher", "Rodgers", "Wayne"
    ]
    let phones = [
        "+7(999)1111111", "+7(999)2111112", "+7(999)3111113", "+7(999)4111114",
        "+7(999)5111115", "+7(999)6111116", "+7(999)7111117", "+7(999)8111118",
        "+7(999)9111119"
    ]
    let emails = [
        "Murphy@bk.com", "Jenkin@bk.com", "Lee@bk.com", "Stuart@bk.com",
        "Parker@bk.com", "Stark@bk.com", "Butcher@bk.com", "Rodgers@bk.com",
        "Waynn@bk.com"
    ]
    
    private init() {}
}
