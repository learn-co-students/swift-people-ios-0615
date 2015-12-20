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
    var qualifiedTutor:Bool {
        if skills.count >= 4 {return true}
        else {return false}
    }
    
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
        if let ageInYrs = ageInYears {
            let age = ageInYrs + 1
            ageInYears = Int?(age)
            let ordinalAge = String(age) + age.ordinal().uppercaseString
            return "HAPPY \(ordinalAge) BIRTHDAY, \(self.name.uppercaseString)!!!"
        }
        else {
            return "HAPPY BIRTHDAY, \(self.name.uppercaseString)!!!"
        }
    }
    
    func addSkill(skill:String) {
        var skillSet:Set = Set(self.skills)
        skillSet.insert(skill)
        self.skills = Array(skillSet)
    }
    
    func learnSkillBash() {
        addSkill("bash")
    }
    func learnSkillXcode()	{
        addSkill("Xcode")
    }
    func learnSkillObjectiveC()	{
        addSkill("Objective-C")
    }
    func learnSkillSwift() {
        addSkill("Swift")
    }
    func learnSkillInterfaceBuilder() {
        addSkill("Interface Builder")
    }
    
}
