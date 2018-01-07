//
//  inheritance.swift
//  swift-practice
//
//  Created by Anjali Gupta on 1/7/18.
//  Copyright © 2018 Anjali. All rights reserved.
//

import Foundation

class Car {
    
    var color: String
    var size: String
    var mpg: Double
    var fuel: Double
    var seats: Int
    var model: String
    var manufacturer: String
    var wheels: Int
    
    init() {
        color = "none"
        size = "none"
        mpg = 0.0
        fuel = 0.0
        seats = 0
        model = "none"
        manufacturer = "none"
        wheels = 0
    }
    
    
}

class Airplane {
    
    var color: String
    var windows: Int
    var seats: Int
    var seatClasses: Int
    var fuel: Double
    var wheels: Int
    var manufacturer: String
    var airline: String
    var model: String
    
    init() {
        color = "none"
        windows = 0
        seats = 0
        seatClasses = 0
        fuel = 0.0
        wheels = 0
        manufacturer = "none"
        airline = "none"
        model = "none"
        
    }
 
}

class CruiseShip {
    
    var color: String
    var rooms: Int
    var roomClasses: Int
    var fuel: Double
    var manufacturer: String
    var model: String
    var passengers: Int
    var pools: Int
    var floors: Int
    var company: String
    
    init() {
        color = "none"
        rooms = 0
        roomClasses = 0
        fuel = 0.0
        manufacturer = "none"
        model = "none"
        passengers = 0
        pools = 0
        floors = 0
        company = "none"
    
}

class FreightTrain {
    var color: String
    var model: String
    var fuel: Double
    var company: String
    var cars: Int
    var wheels: Int
    var manufacturer: String
    
    init() {
        color = "none"
        model = "none"
        fuel = 0.0
        company = "none"
        cars = 0
        wheels = 0
        manufacturer = "none"
    }
    
}
}

func inheritanceProgram() {
    
    print("inheritance")
    
}
