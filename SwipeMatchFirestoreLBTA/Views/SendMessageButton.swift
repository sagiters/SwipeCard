//
//  SendMessageButton.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/17.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

class SendMessageButton: UIButton {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let gradientLayer = CAGradientLayer()
        let leftColor = #colorLiteral(red: 0.9713240266, green: 0.1664738357, blue: 0.4286419749, alpha: 1)
        let rightColor = #colorLiteral(red: 0.9822059274, green: 0.4007248878, blue: 0.2990709543, alpha: 1)
        gradientLayer.colors = [leftColor.cgColor, rightColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        layer.cornerRadius = rect.height / 2
        clipsToBounds = true
        
        gradientLayer.frame = rect
    }

}
