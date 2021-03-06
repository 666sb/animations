//
//  ViewController.swift
//  animations
//
//  Created by  User on 06.03.2021.
//

import UIKit

final class MainViewController: UIViewController, MainViewControllerProtocol {
    
    var presenter: MainPresenterProtocol?
    
    lazy var rectView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(oneTapGecture(sender:)))
        view.addGestureRecognizer(recognizer)
        return view
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationItem.title = "Test"
        view.addSubview(rectView)
        setupConstraints()
    }
     
    @objc private func oneTapGecture(sender: UITapGestureRecognizer) {
        presenter?.animationRect()
    }
    
    private func setupConstraints() {
        let guide = view.safeAreaLayoutGuide
        let height = guide.layoutFrame.size.height
        let width = guide.layoutFrame.size.width
        let rectSize = ([height, width].min() ?? width) / 3
        
        rectView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        rectView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        rectView.heightAnchor.constraint(equalToConstant: rectSize).isActive = true
        rectView.widthAnchor.constraint(equalToConstant: rectSize).isActive = true
    }


}

