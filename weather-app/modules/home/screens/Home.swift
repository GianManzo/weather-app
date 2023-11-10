//
//  Home.swift
//  weather-app
//
//  Created by Gian Manzo on 11/8/23.
//

import Foundation
import UIKit

class Home: UIView {
    init(viewController: UIView) {
        super.init(frame: .zero)
        
        let background: Background = Background(superview: viewController);
        let header: Header = Header(superview: viewController)
        
        viewController.addSubview(self)
        self.addSubview(background)
        self.addSubview(header)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
