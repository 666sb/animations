//
//  Extensions.swift
//  animations
//
//  Created by  User on 06.03.2021.
//

import UIKit

extension UINavigationController {
    static func create(root: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: root)
        nav.view.backgroundColor = .appColorMain()
        nav.navigationBar.backgroundColor = .appColorMain()
        nav.navigationBar.barTintColor = .appColorMain()
        nav.navigationBar.tintColor = UIColor.white
        nav.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        nav.navigationBar.isTranslucent = false
        nav.navigationBar.barStyle = .black
        return nav
    }
}

extension UIColor {
    static func appColorMain() -> UIColor {
        return UIColor.blue
        
    }
}

