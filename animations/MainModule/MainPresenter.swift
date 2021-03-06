//
//  MainPresenter.swift
//  animations
//
//  Created by  User on 06.03.2021.
//

import UIKit

protocol MainViewControllerProtocol: class {
    var rectView: UIView { get set }
}

protocol MainPresenterProtocol: class {
    func animationRect()
}

final class MainPresenter: MainPresenterProtocol {
    weak var view: MainViewControllerProtocol?
    var router: RouterProtocol?
    
    func animationRect() {
        let scaleAnimation = CABasicAnimation(keyPath: "transform.scale")
        scaleAnimation.fromValue = 1.0
        scaleAnimation.toValue = 2.0
        scaleAnimation.duration = 2
        scaleAnimation.timingFunction = CAMediaTimingFunction(name: .easeOut)
        scaleAnimation.isRemovedOnCompletion = false
        scaleAnimation.fillMode = CAMediaTimingFillMode.forwards
        view?.rectView.layer.add(scaleAnimation, forKey: "transform.scale")        
    }
    
}
