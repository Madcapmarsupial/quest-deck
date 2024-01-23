//
//  File.swift
//  
//
//  Created by Sam Green on 1/16/24.
//

import Foundation

class Card: Identifiable {
    let id: UUID
    let name: String
    let desc: String
    let imageName: String
   
    
    init(name: String, desc: String, imageName: String) {
        self.name = name
        self.desc = desc
        self.id = UUID()
        self.imageName = imageName
    }
    
}
