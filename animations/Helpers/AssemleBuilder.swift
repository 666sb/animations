//
//  AssemleBuilder.swift
//  animations
//
//  Created by  User on 06.03.2021.
//

import UIKit

protocol AssembleBuilderProtocol {
    
}

final class AssembleBuilder: AssembleBuilderProtocol {
    
    private let router = Router()
    
    func startRootVC() -> UINavigationController {
        let mainViewController = createMainModule()
        let navigationController = UINavigationController.create(root: mainViewController)
        navigationController.view.backgroundColor = .appColorMain()
        router.navigationController = navigationController
        return navigationController
    }
    
    private func createMainModule() -> MainViewController {
        let presenter = MainPresenter()
        let view = MainViewController()
        presenter.view = view
        presenter.router = router
        view.presenter = presenter
        router.mainView = view
        router.assemblyBuilder = self
        router.mainPresenter = presenter
        return view
    }
    
}
