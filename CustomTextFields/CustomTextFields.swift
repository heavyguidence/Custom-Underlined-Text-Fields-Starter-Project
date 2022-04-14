//
//  CustomTextFields.swift
//  CustomTextFields
//
//  Created by Gurjap on 2022-04-14.
//

import Foundation
import UIKit


class CustomTextFields : UITextField {
    
    let padding : CGFloat = 35
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupUnderlinedTextField()
    }
    
     //MARK:  Setup
    func setupUnderlinedTextField() {
        let bottomLayer = CALayer()
        bottomLayer.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width - 35, height: 1)
        bottomLayer.backgroundColor = UIColor.black.cgColor
        self.layer.addSublayer(bottomLayer)
    }
    
    func setupLeftImageView(image : UIImage) {
        
        self.leftViewMode = .always
        let leftView = UIImageView(frame: CGRect(x: 0, y: self.frame.height / 2 - 10 , width: 25, height: 20))
        leftView.tintColor = .black
        leftView.image = image
        self.addSubview(leftView)
    }
    
     //MARK:  Fix layout
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height
        )
        return bounds
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height
        )
        return bounds
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let bounds = CGRect(x: self.padding, y: 0, width: bounds.width, height: bounds.height
        )
        return bounds
    }

}
