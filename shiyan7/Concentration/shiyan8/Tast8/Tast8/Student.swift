//
//  Student.swift
//  Tast8
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 liqin. All rights reserved.
//

import Foundation
enum Gender{
    case male
    case female
}
class Person:CustomStringConvertible{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String{
        get{
            return firstName+lastName
        }
        
    }
    init(){
        self.firstName = ""
        self.lastName = ""
        self.age = 0
        self.gender = Gender.male
    }
  
    init(firstName:String,lastName:String,age:Int,gender:Gender){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
        
    }
   
    convenience init(name:String){
        self.init(firstName:name,lastName:"",age:20,gender:Gender.male)
    }

    var description:String{
        return "Name\(fullName) Age\(age) Gender\(gender)"
    }
    
}

func ==(a:Person,b:Person)->Bool{
    return a.fullName == b.fullName&&a.age == b.age&&a.gender == b.gender
}
func !=(a:Person,b:Person)->Bool{
    return a.fullName != b.fullName || a.age != b.age || a.gender != b.gender
}
class Teacher:Person{
    var title:String
   
    init (firstName:String,lastName:String,age:Int,gender:Gender,title:String){
        self.title = title
        super.init(firstName:firstName,lastName:lastName,age:age,gender:gender)
    }
    
    override init(){
        title=""
        super.init()
    }
    override var description:String{
        return "Name\(fullName) Age\(age) Gender\(gender) Title\(title)"
    }
    
}
class Student:Person{
    var stuNo:String
    init(firstName:String,lastName:String,age:Int,gender:Gender,stuNo:String){
        self.stuNo = stuNo
        super.init(firstName:firstName,lastName:lastName,age:age,gender:gender)
    }
    override var description:String{
        return "Name\(fullName) Age\(age) Gender\(gender) stuNo\(stuNo)"
    }
}
var p1=Person(firstName:"zhang",lastName:"yi",age:20,gender:Gender.female)
var p2=Person(firstName:"li",lastName:"er",age:18,gender:Gender.female)
var p3=Person(firstName:"li",lastName:"song",age:19,gender:Gender.male)
var t1=Teacher(firstName:"liu",lastName:"xian",age:21,gender:Gender.male,title:"Chinese")
var t2=Teacher(firstName:"son",lastName:"yu",age:21,gender:Gender.female,title:"English")
var t3=Teacher(firstName:"lin",lastName:"ling",age:21,gender:Gender.female,title:"Math")
var s1=Student(firstName:"sha",lastName:"zhao",age:21,gender:Gender.female,stuNo:"201611952")
var s2=Student(firstName:"zhao",lastName:"qia",age:21,gender:Gender.male,stuNo:"201811434")
var s3=Student(firstName:"yi",lastName:"yu",age:21,gender:Gender.female,stuNo:"201811412")
