//
//  Friend.swift
//  ClientVK
//
//  Created by Викентий on 25.06.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

struct Friend {
    var name: String
    var images: [UIImage]
    
    var avatar: UIImage? {
        return images.first
    }
    
    static let friends: [Friend] = [
    Friend(name: "Maria Kozlova", images: [UIImage(systemName: "person")!, UIImage(systemName: "person.fill")!, UIImage(systemName: "person.circle")!]),
    Friend(name: "Pavel Zotov", images: [UIImage(systemName: "person")!, UIImage(systemName: "person.circle.fill")!]),
    Friend(name: "Alexander Zhdanov", images: [UIImage(systemName: "person")!]),
    Friend(name: "Petr Latyshev", images: [UIImage(systemName: "person")!])
    ]
}
