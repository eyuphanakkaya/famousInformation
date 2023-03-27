//
//  informationList.swift
//  famousInformation
//
//  Created by Eyüphan Akkaya on 27.03.2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Celebrity: Identifiable{
    var id = UUID()
    var name : String
    var imageName : String
    var birthDay : String
    var job : String
    var statement : String
    var city : String
    var coordinate : Coordinate
    
    var coordinateLocaiton : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
    
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}


let addCel = Celebrity(name: "Elon Musk", imageName: "elon", birthDay: "28 Haziran 1971", job: "Ceo", statement: "Açıklama", city: "ABD", coordinate: Coordinate(latitude: 40.71, longitude: -74.16))
let addCel2 = Celebrity(name: "Jeff Bezos", imageName: "jeff", birthDay: "28 Haziran 1971", job: "Ceo", statement: "Açıklama", city: "Boston", coordinate: Coordinate(latitude: 42.34, longitude: -71.07))

let addCel3 = Celebrity(name: "Steven Jobs", imageName: "steven", birthDay: "28 Haziran 1971", job: "Apple ", statement: "Açıklama", city: "California", coordinate: Coordinate(latitude: 37.14, longitude: -119.88))

var celebrityArray = [addCel,addCel2,addCel3]


