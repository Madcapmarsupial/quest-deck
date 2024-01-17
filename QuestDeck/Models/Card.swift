//
//  File.swift
//  
//
//  Created by Sam Green on 1/16/24.
//

import Foundation

class Card: Identifiable {
    var name: String
    var desc: String
    let id: UUID
    
    init(name: String, desc: String) {
        self.name = name
        self.desc = desc
        self.id = UUID()
    }
    
}
