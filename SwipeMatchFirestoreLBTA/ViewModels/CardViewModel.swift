//
//  CardViewModel.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/9.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

protocol ProducesCardViewModel {
    func toCardViewModel() -> CardViewModel
}

struct CardViewModel {
    // we'll define the properties that are view will display/render out
    let imageNames: [String]
    let attributedString: NSAttributedString
    let textAlignment: NSTextAlignment
}

// What  exactly do we do with this card view model thing???

