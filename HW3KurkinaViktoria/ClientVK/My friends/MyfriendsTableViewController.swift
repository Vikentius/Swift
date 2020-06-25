//
//  MyfriendsTableViewController.swift
//  ClientVK
//
//  Created by Викентий on 22.06.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

class MyfriendsTableViewController: UITableViewController {
    
    var friends = Friend.friends
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyfriendsCell", for: indexPath) as! MyfriendsTableViewCell

        let friend = friends[indexPath.row]
        cell.myfriendsLabel?.text = friend.name
        cell.myfriendsphoto?.image = friend.avatar
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let controller = segue.destination as? PhotoCollectionViewController,
            let index = tableView.indeхPathForSelectedRow?.row {
            let friend = friends[index]
            controller.photoFriends = friend.images
    }
}
}
