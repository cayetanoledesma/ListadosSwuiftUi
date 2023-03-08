//
//  Menu.swift
//  ListadoUI
//
//  Created by estech on 20/2/23.
//

import SwiftUI

struct catalogo: Codable, Hashable, Identifiable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: String
    var image: String
    var rating: Rating
    
    }
    struct Rating: Codable, Hashable{
    
    var rate: Double
    var count: Double
}
    
