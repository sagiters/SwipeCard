//
//  RegistrationViewModel.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/12.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

class RegistrationViewModel {

    var bindableImage = Bindable<UIImage>()
    
//    var image: UIImage? {
//        didSet {
//            imageObserver?(image)
//        }
//    }
//    var imageObserver: ((UIImage?) -> ())?
    
    var fullName: String? {
        didSet {
            checkFromValidity()
        }
    }
    var email: String? { didSet { checkFromValidity() } }
    var password: String? { didSet { checkFromValidity() } }
    
    fileprivate func checkFromValidity() {
        let isFormValid = fullName?.isEmpty == false && email?.isEmpty == false && password?.isEmpty == false
        bindableIsFormValid.value = isFormValid
//        isFormValidObserver?(isFormValid)
    }
    
    var bindableIsFormValid = Bindable<Bool>()
    
    // Reactive programming
//    var isFormValidObserver: ((Bool) -> ())?
    
    
}
