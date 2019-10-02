//
//  Album.swift
//  AppBanda
//
//  Created by ENRIQUE VERGARA  on 9/30/19.
//  Copyright © 2019 ENRIQUE VERGARA . All rights reserved.
//

import UIKit

class Album {
    var name : String!
    var canciones : [String]!
    
    init(_ name : String, _ canciones : [String]) {
        self.name = name
        self.canciones = canciones
    }
    
}
