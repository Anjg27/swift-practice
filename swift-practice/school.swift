//
//  school.swift
//  swift-practice
//
//  Created by UCode on 11/19/17.
//  Copyright © 2017 Anjali. All rights reserved.
//

import Foundation

class Person {
    
    var name: String
    var age: Int
    var gender: String
    
    init(name: String, age:Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
}

class Student : Person, CustomStringConvertible {
    
    var id: Int
    var gpa: Double
    
    var description: String {
        return "\(name) [\(id)] with GPA \(gpa)"
    }
    
    init(id: Int, name: String, age: Int, gender: String, gpa: Double) {
        self.id = id
        self.gpa = gpa
        super.init(name: name, age: age, gender: gender)
    }
    
}

class Teacher: Person {

    var coolness: String
    
    init(name: String, age: Int, gender: String, coolness: String) {
        self.coolness = coolness
        super.init(name: name, age: age, gender: gender)
    }
}


struct Class {
    var subject:  String
    var teacher:  Teacher
    var students: [Student]
    
    func listStudents(separator: String) -> String {
        var output = ""
        for student in students {
            output += "\(student)\(separator)"
        }
        return output
    }
    
    func studentAverage() -> Double {
        var sum: Double = 0.0
        for student in students {
            sum += student.gpa
        }
        return sum / Double(students.count)
    }
    
}



func schoolProgram() {
    
    let students = [
        Student(id: 565924, name: "Anjali", age: 15, gender: "F", gpa: 3.7),
        Student(id: 565375, name: "Jessica", age: 15, gender:"F", gpa: 3.5),
        Student(id: 565836, name: "Kelsey", age: 16, gender: "F", gpa: 4.3),
        Student(id: 565260, name:"Matt", age: 15, gender: "M", gpa: 3.9),
        Student(id: 565179, name: "Jim", age: 16, gender: "M", gpa: 3.1)
    ]
    
    let teacher = Teacher(name: "Mr. Smith", age: 40, gender: "M", coolness: "Not very cool")
    
     let myClass = Class(subject: "Biology", teacher: teacher, students: students)
    print(myClass.listStudents(separator: "\n"))
    
    
//    print(listStudents(students: students, separator: "\n"))
    print(myClass.studentAverage())
   
}
