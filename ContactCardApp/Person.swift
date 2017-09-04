//
//  Person.swift
//  ContactCardApp
//
//  Created by Tim van Lieshout on 04/09/2017.
//  Copyright © 2017 Tim van Lieshout. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String?
    var lastName: String?
    var image : UIImage?
    
    required init(firstName: String, lastName: String, imageString : String)
    {
        self.firstName = firstName
        self.lastName = lastName
        image = UIImage(named: imageString)
        
    }
    

}
