//
//  PhotoCollectionViewController.swift
//  ClientVK
//
//  Created by Викентий on 22.06.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

class PhotoCollectionViewController: UICollectionViewController {

    var photoFriends: [UIImage] = []
    
@IBOutlet weak var LikeControl: LikeControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        LikeControl.isLiked = false
        LikeControl.likesCount = 10
    }

    // MARK: - Navigation

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoFriends.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PhotoCell
        
        cell.photo.image = photoFriends[indexPath.row]
        
        return cell
    }
}
