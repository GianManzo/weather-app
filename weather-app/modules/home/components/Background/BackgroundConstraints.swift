//
//  Header.constraints.swift
//  weather-app
//
//  Created by gian on 12/11/23.
//

import Foundation
import UIKit
extension Background {
    func setupConstraints(in superview: UIView){
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        ])
    }
}
