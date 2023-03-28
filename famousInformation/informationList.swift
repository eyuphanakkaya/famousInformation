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


let addCel = Celebrity(name: "Elon Musk", imageName: "elon", birthDay: "Jun 28, 1971", job: "Ceo", statement: "Elon Musk, founder, CEO and chief of engineering and design offices of SpaceX space company; early investor, CEO and product architect of Tesla automotive company, founder of The Boring Company, co-founder and first co-chairman of Neuralink, Starlink and OpenAI.", city: "ABD", coordinate: Coordinate(latitude: 40.71, longitude: -74.16))
let addCel2 = Celebrity(name: "Jeff Bezos", imageName: "jeff", birthDay: "March 13,  1965", job: "Ceo", statement: "Bezos graduated from Princeton University in 1986 with degrees in electrical engineering and computer science, and tried many different jobs. Bezos, who got bored with these jobs in a very short time and believed that he should be in a more important place, started to work with the New York investment bank D.E. He started working at Shaw & Co.", city: "Boston", coordinate: Coordinate(latitude: 42.34, longitude: -71.07))

let addCel3 = Celebrity(name: "Steven Jobs", imageName: "steven", birthDay: "February 24, 1955", job: "Apple ", statement: "Steven Paul Jobs (February 24, 1955 – October 5, 2011) was a co-founder of Apple Computer, Inc. He served as CEO of Apple Inc., under its new name, until 5 weeks before his death. He is considered one of the leaders of the computer industry.", city: "California", coordinate: Coordinate(latitude: 37.14, longitude: -119.88))

let addCel4 = Celebrity(name: "Bill Gates", imageName: "bill", birthDay: "October 28, 1955", job: "Ceo", statement: "William Henry Bill Gates III , better known as Bill Gates, is an American businessman, software developer, investor, author, and philanthropist. He is a co-founder of Microsoft with his childhood friend Paul Allen.[4][5] During his career at Microsoft, Gates served as chairman of the board, chief executive officer (CEO), chairman and chief software architect, and was Microsoft's largest individual shareholder until May 2014.", city: "Los Angeles", coordinate: Coordinate(latitude: 34.02, longitude: -118.27))

let addCel5 = Celebrity(name: "Mark Zuckerberg", imageName: "mark", birthDay: "May 14, 1984", job: "Ceo", statement: "Mark Elliot Zuckerberg (born , New York) is an American computer programmer, entrepreneur, and founder of Meta (formerly Facebook). He was named 2010 Man of the Year by Time's.", city: "Las Vegas", coordinate: Coordinate(latitude: 36.16, longitude: -115.12))
var celebrityArray = [addCel,addCel2,addCel3,addCel4,addCel5]




