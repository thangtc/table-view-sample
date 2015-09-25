//
//  HomeController.swift
//  TableViewSample
//
//  Created by Thang Truong on 9/25/15.
//  Copyright (c) 2015 Thang Truong. All rights reserved.
//

import UIKit

class HomeController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let CELL_IDENTIFER: String = "home_cell"
    private let LANGUAGES: [String] = ["Java", "Swift", "Object-C", "C++"]
    
    @IBOutlet weak var tableViewHome: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Setting up for table view
        self.tableViewHome.registerNib(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: CELL_IDENTIFER)
        self.tableViewHome.dataSource = self
        self.tableViewHome.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, accessoryButtonTappedForRowWithIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return LANGUAGES.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var homeCell: HomeCell? = self.tableViewHome.dequeueReusableCellWithIdentifier(CELL_IDENTIFER) as! HomeCell?
        homeCell?.labelName.text = LANGUAGES[indexPath.row]
        
        return homeCell!
    }
    
}
