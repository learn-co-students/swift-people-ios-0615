//
//  Person.swift
//  swift-people
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    private let name:String
    private var ageInYears:Int?
    private var skills:[String]
    private var qualifiedTutor:Bool {return false}
    
    init(name:String, ageInYears:Int?, skills:[String]) {
        self.name = name
        self.ageInYears = ageInYears
        self.skills = skills
    }
    
    convenience init(name:String, ageInYears:Int?) {
        self.init(name:name, ageInYears:ageInYears, skills:[String]())
    }
    
    convenience init(name:String) {
        self.init(name:name, ageInYears:nil)
    }
    
    convenience init() {
        self.init(name:"John Doe")
    }
}
