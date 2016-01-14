//
//  BlueButton.swift
//  donald-trump-soundboard
//
//  Created by Jimmy Brown on 1/13/16.
//  Copyright © 2016 Jimmy Brown. All rights reserved.
//

import UIKit

class BlueButton: UIButton {

    override func awakeFromNib() {
        layer.cornerRadius = 5.0
        backgroundColor = UIColor(red: 53.0/255.0, green: 113.0/255.0, blue: 255.0/255.0, alpha: 1.0)
        setTitleColor(UIColor.whiteColor(), forState: .Normal)
    }

}
