//
//  Course.swift
//  IntroMVVM
//
//  Created by Timothy Lee on 3/18/19.
//  Copyright © 2019 Timothy Lee. All rights reserved.
//

import Foundation

struct Course: Decodable {
    let id: Int
    let name: String
    let numberOfLessons: Int
}
