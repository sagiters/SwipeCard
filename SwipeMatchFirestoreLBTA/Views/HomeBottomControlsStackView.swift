//
//  HomeBottomControlsStackView.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/8.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

class HomeBottomControlsStackView: UIStackView {

    static func createButton(image: UIImage) -> UIButton {
        let button = UIButton(type: .system)
        button.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        return button
    }
    
    let refreshButton = createButton(image: #imageLiteral(resourceName: "refresh_circle"))
    let dislikeButton = createButton(image: #imageLiteral(resourceName: "dismiss_circle"))
    let superLikehButton = createButton(image: #imageLiteral(resourceName: "super_like_circle"))
    let likeButton = createButton(image: #imageLiteral(resourceName: "like_circle"))
    let specialButton = createButton(image: #imageLiteral(resourceName: "boost_circle"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        distribution = .fillEqually
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        [refreshButton, dislikeButton, superLikehButton, likeButton, specialButton].forEach { (button) in
            self.addArrangedSubview(button)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
