//
//  CategoriesVC.swift
//  coder-swag
//
//  Created by Hein Htet on 8/4/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tabelView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabelView.delegate = self
        tabelView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tabelView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        return cell
    }


}

