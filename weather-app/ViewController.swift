//
//  ViewController.swift
//  weather-app
//
//  Created by Gian Manzo on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    private lazy var customView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    
    //methods cicle life view controller

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
        // when did load, first time
    }
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        // when the screen is visible
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewWillAppear(animated)
        // when before didAppear, when view will appear
    }
    
    override func viewWillDisappear(_ animated: Bool){
        super.viewWillDisappear(animated)
        // when the screen will disappear
    }
    
    override func viewDidDisappear(_ animated: Bool){
        super.viewDidDisappear(animated)
        // when the screen will did disapear
    }
    

    
    private func setupView (){
        view.backgroundColor = .red

        setHierarchy()
        setConstraint()
     
    }
    
    private func setHierarchy(){
        view.addSubview(customView)

    }
    
    private func setConstraint(){
        NSLayoutConstraint.activate([
            customView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            customView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            customView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50),
            customView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
        ])
    }
}

