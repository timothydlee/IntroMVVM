//
//  CoursesTableViewController.swift
//  IntroMVVM
//
//  Created by Timothy Lee on 3/28/19.
//  Copyright © 2019 Timothy Lee. All rights reserved.
//

import UIKit

class CoursesTableViewController: UITableViewController {
    
    var courseViewModels = [CourseViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
