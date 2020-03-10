//
//  CustomView.swift
//  AwakeFromNibTest
//
//  Created by Felix Marianayagam on 3/10/20.
//  Copyright © 2020 SubhaFelix. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var button: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        button.addTarget(self, action: #selector(touchUpInside), for: .touchUpInside)
    }
    
    @objc func touchUpInside(_ sender: UIButton) {
        print("Button clicked")
    }
}
