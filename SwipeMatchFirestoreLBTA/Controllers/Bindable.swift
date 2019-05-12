//
//  Bindable.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/12.
//  Copyright © 2019 Jack. All rights reserved.
//

import Foundation

class Bindable<T> {
    
    var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    var observer: ((T?) -> ())?
    
    func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
    
}
