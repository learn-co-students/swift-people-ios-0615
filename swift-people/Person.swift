//
//  Person.swift
//  swift-people
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name:String
    var ageInYears:Int?
    var skills:[String]
    var qualifiedTutor:Bool {return false}
    
    init(name:String, ageInYears:Int?) {
        self.name = name
        self.ageInYears = ageInYears
        self.skills = [String]()
    }
    
    convenience init(name:String) {
        self.init(name:name, ageInYears:nil)
    }
    
    convenience init() {
        self.init(name:"John Doe")
    }
    
    func celebrateBirthday()->String {
        if let age = ageInYears {
            let ordinalAge = String(age) + age.ordinal().capitalizedString
            return "HAPPY \(ordinalAge) BIRTHDAY, \(self.name.capitalizedString)!!!"
        }
        else {
            return "HAPPY BIRTHDAY, \(self.name.capitalizedString)!!!"
        }
    }
}
