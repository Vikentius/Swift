//
//  MyfriendsTableViewController.swift
//  ClientVK
//
//  Created by Викентий on 22.06.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

class MyfriendsTableViewController: UITableViewController {
    
    var friends: [String] = []
    var sections: [String] = []
    
    @IBOutlet weak var myFriendsView: MyFriendsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friends = (1...30)
            .map({ _ in Lorem.fullName })
            .sorted()
        
        sections = Array(
            Set(
                friends.map({
                    String($0.prefix(1)).uppercased()
                })
            )
        ).sorted()
        
    }

    // MARK: - Table view data source
    
    func itemsInSection(_ section: Int) -> [String] {
        let letter = sections[section]
        return friends.filter { $0.hasPrefix(letter) }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsInSection(section).count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyfriendsCell", for: indexPath) as! MyfriendsTableViewCell

        cell.myfriendsLabel?.text = itemsInSection(indexPath.section)[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = tableView.dequeueReusableHeaderFooterView(withIdentifier: "MyFriendsHeader") as! MyFriendsView

        view.myFriendsView?.UiView = itemsInSection(indexPath.section)[indexPath.row]
        
        return sections[section]
    }
    
}

