//
//  Router.swift
//  animations
//
//  Created by  User on 06.03.2021.
//

import UIKit

protocol RouterProtocol {
    
}

final class Router: RouterProtocol {
    var assemblyBuilder: AssembleBuilderProtocol?
    weak var navigationController: UINavigationController?
    weak var mainView: MainViewController?
    weak var mainPresenter: MainPresenterProtocol?
    
}
