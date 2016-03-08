//
//  User.swift
//  PlatinumBeer
//

import UIKit

class User {
    
    var _name: String
    var _phone: String
    var _gender: Int
    
    init(name: String, phone: String, gender: Int) {
        self._name = name
        self._phone = phone
        self._gender = gender
    }
    
    func getGender() -> String
    {
        var gender = "Male"
        if _gender == 1
        {
            gender = "Female"
        }
        
        return gender
    }
    
    func getName() -> String
    {
        return _name
    }
    
    func getPhone() -> String
    {
        return _phone
    }

}
