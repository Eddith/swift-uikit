//
//  BaseTextField.swift
//  SocialClub
//
//  Created by Ali Koçman on 18.03.2020.
//  Copyright © 2020 Ali Koçman. All rights reserved.
//

import UIKit

class BaseTextField: UITextField {
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: bounds.origin.x + 10, y: bounds.origin.y, width: bounds.width, height: bounds.height)
    }
    
    init(placeHolder: String?=nil) {
        super.init(frame: CGRect.zero)
        
        returnKeyType = .next
        
        attributedPlaceholder = NSAttributedString(string: placeHolder ?? "", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        autocorrectionType = .no
        autocapitalizationType = .none
        enablesReturnKeyAutomatically = true
        
        tintColor = .lightGray
        textColor = .gray
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: super.intrinsicContentSize.width, height: 45)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
