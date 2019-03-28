//
//  DataService.swift
//  IntroMVVM
//
//  Created by Timothy Lee on 3/18/19.
//  Copyright © 2019 Timothy Lee. All rights reserved.
//

import Foundation

class DataService: NSObject {
    static let shared = DataService()
    
    func fetchCourses(completion: @escaping ([Course]?, Error?) -> ()) {
        let urlString = "https://api.letsbuildthatapp/jscondecodable/courses"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                print("Failed to fetch courses:", err)
                return
            }
            
            guard let data = data else { return }
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    completion(courses, nil)
                }
            } catch let jsonErr {
                print("Failed to decode:", jsonErr)
            }
        }.resume()
    }
}
