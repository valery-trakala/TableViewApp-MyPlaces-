//
//  PlaceModel.swift
//  TableViewApp
//
//  Created by Valery Trakala on 05/11/2023.
//

import UIKit

struct PlaceModel {
    var image: UIImage?
    var restarauntImage: String?
    var name: String
    var location: String?
    var type: String?

    static let restaurantNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "XO", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории",
        "Классик", "LoveLife", "Шок", "Бочка"
    ]
    
    static func getPlaces() -> [PlaceModel] {
        let places = restaurantNames.map { place in
            PlaceModel(image: nil, restarauntImage: place, name: place, location: "Краков", type: "Чебуречная")
        }

        return places
        
    }
}
