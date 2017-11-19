//
//  school.swift
//  swift-practice
//
//  Created by UCode on 11/19/17.
//  Copyright © 2017 Anjali. All rights reserved.
//

import Foundation

struct Student {
    
    let id: Int
    let name: String
    let gpa: Double
    
    func description() -> String {
        return "\(name) [\(id)] with GPA \(gpa)"
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
    
    
    
    print(students[0].description())
    
}
