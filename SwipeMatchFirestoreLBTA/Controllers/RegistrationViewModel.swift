//
//  RegistrationViewModel.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/12.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

class RegistrationViewModel {
    
    var fullName: String? {
        didSet {
            checkFromValidity()
        }
    }
    var email: String? { didSet { checkFromValidity() } }
    var password: String? { didSet { checkFromValidity() } }
    
    fileprivate func checkFromValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        isFormValidObserver?(isFormValid)
    }
    
    // Reactive programming
    var isFormValidObserver: ((Bool) -> ())?
    
}
