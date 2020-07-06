//
//  Mygroups.swift
//  ClientVK
//
//  Created by Викентий on 28.06.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

struct Mygroup {
    var name: String
    var images: [UIImage]
    
    var avatar: UIImage? {
        return images.first
    }
    
    static let mygroups: [Mygroup] = [
        Mygroup(name: "Kommersant", images: [UIImage(systemName: "viity-iz-gruppy-whatsapp")!]),
    Mygroup(name: "Bloomberg", images: [UIImage(systemName: "viity-iz-gruppy-whatsapp")!]),
    Mygroup(name: "WSJ", images: [UIImage(systemName: "viity-iz-gruppy-whatsapp")!])
    ]
}
