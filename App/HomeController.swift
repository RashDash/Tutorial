//
//  ViewController.swift
//  App
//
//  Created by Ashwani Choudhary on 24/04/23.
//

import UIKit

class HomeController: UIViewController {

    @IBOutlet var tblView: UITableView! {
        didSet {
            tblView.dataSource = self
            tblView.delegate = self
            tblView.separatorStyle = .none
        }
    }
    
    var tableArray = [[String: Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let dict1 = ["header": "UITableView", "description": "Load data in list using Custom Cell"]
        tableArray.append(dict1)
        let dict2 = ["header": "UICollectionView", "description": "Load data in list Using Custom Cell,  Also add Switch at the top of the Controller"]
        tableArray.append(dict2)
        let dict3 = ["header": "LazyLoading Part 1", "description": "Load Images in UITableView/UICollectionView. Use Switch at top."]
        tableArray.append(dict3)
        
        self.title = "Tutorials"
        
        registerCell()
    }

    func registerCell() {
        tblView.register(UINib(nibName: "HomeCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }

}

extension HomeController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as! HomeCell
        cell.nameLbl.text = tableArray[indexPath.row]["header"] as? String
        cell.descLbl.text = tableArray[indexPath.row]["description"] as? String
        
        return cell
    }
}

extension HomeController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Data at Path \(indexPath.row) ===> \(tableArray[indexPath.row])")
    }
}
