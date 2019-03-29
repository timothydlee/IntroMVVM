//
//  CourseViewModel.swift
//  IntroMVVM
//
//  Created by Timothy Lee on 3/28/19.
//  Copyright © 2019 Timothy Lee. All rights reserved.
//

import Foundation
import UIKit

struct CourseViewModel {
    let name: String
    let detailTextString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    // Dependency Injection (DI)
    init(course: Course) {
        self.name = course.name
        
        if course.numberOfLessons > 35 {
            detailTextString = "Lessons 30+ Check It Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lessons: \(course.numberOfLessons)"
            accessoryType = .none
        }
    }
}
