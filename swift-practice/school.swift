//
//  school.swift
//  swift-practice
//
//  Created by UCode on 11/19/17.
//  Copyright © 2017 Anjali. All rights reserved.
//

import Foundation

struct Student {
    
    var id: Int
    var name: String
    var gpa: Double
    
    func description() -> String {
        return "\(name) [\(id)] with GPA \(gpa)"
    }
    
}

struct Class {
    var subject:  String
    var teacher:  String
    var students: [Student]
    
    func listStudents(separator: String) -> String {
        var output = ""
        for student in students {
            output += student.description() + separator
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
        Student(id: 565924, name: "Anjali", gpa: 3.7),
        Student(id: 565375, name: "Jessica", gpa: 3.5),
        Student(id: 565836, name: "Kelsey", gpa: 4.3),
        Student(id: 565260, name:"Matt" , gpa: 3.9),
        Student(id: 565179, name: "Jim", gpa: 3.1)
    ]
    
     let myClass = Class(subject: "Biology", teacher: "Mr. Smith", students: students)
    print(myClass.listStudents(separator: "\n"))
    
    
//    print(listStudents(students: students, separator: "\n"))
//        print(studentAverage(students: students))
}
