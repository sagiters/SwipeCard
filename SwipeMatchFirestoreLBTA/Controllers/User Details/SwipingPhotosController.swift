//
//  SwipingPhotosController.swift
//  SwipeMatchFirestoreLBTA
//
//  Created by Jack on 2019/5/16.
//  Copyright © 2019 Jack. All rights reserved.
//

import UIKit

class SwipingPhotosController: UIPageViewController, UIPageViewControllerDataSource {
    
    let controllers = [
        PhotoController(image: #imageLiteral(resourceName: "boost_circle")),
        PhotoController(image: #imageLiteral(resourceName: "refresh_circle")),
        PhotoController(image: #imageLiteral(resourceName: "like_circle")),
        PhotoController(image: #imageLiteral(resourceName: "super_like_circle")),
        PhotoController(image: #imageLiteral(resourceName: "dismiss_circle"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        view.backgroundColor = .white
        
        
        setViewControllers([controllers.first!], direction: .forward, animated: false)
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController:
        UIViewController) -> UIViewController? {
        let index = self.controllers.firstIndex(where: { $0 == viewController }) ?? -1
        if index == controllers.count - 1 { return nil }
        return controllers[index + 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = self.controllers.firstIndex(where: { $0 == viewController }) ?? -1
        if index == 0 { return nil }
        return controllers[index - 1]
    }
    
}

class PhotoController: UIViewController {
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "jane3"))
    
    init(image: UIImage) {
        imageView.image = image
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.fillSuperview()
        imageView.contentMode = .scaleAspectFit
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
