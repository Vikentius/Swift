//
//  MyFriendsView.swift
//  ClientVK
//
//  Created by Викентий on 06.07.2020.
//  Copyright © 2020 Викентий. All rights reserved.
//

import UIKit

final class MyFriendsHeaderView: UIView {

    @IBOutlet weak var letterLabel: UILabel!

    
    // MARK: - Init
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           setup()
       }
       
       required init?(coder: NSCoder) {
           super.init(coder: coder)
           setup()
       }
       
       private func setup() {
       }
    
    // MARK: - Init

}
