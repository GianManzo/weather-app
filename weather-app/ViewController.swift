//
//  ViewController.swift
//  weather-app
//
//  Created by Gian Manzo on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var backgroundView: BackgroundView = BackgroundView(superview: view)
    private lazy var headerView: HeaderView = HeaderView(superview: view)

    
    //methods cicle life view controller

    override func viewDidLoad() {
        super.viewDidLoad()
        setHierarchy()
        
        // when did load, first time
    }
    
    /* override func viewDidAppear(_ animated: Bool){
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
    }*/
    
    
    private func setHierarchy(){
        view.addSubview(backgroundView)
        view.addSubview(headerView)
    }

}

