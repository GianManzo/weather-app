//
//  Header.constraints.swift
//  weather-app
//
//  Created by gian on 12/11/23.
//

import Foundation
import UIKit
extension Header {
    func setupConstraints(in superview: UIView){
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: 60),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 35),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -35),
            heightAnchor.constraint(equalToConstant: 169),
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            cityLabel.heightAnchor.constraint(equalToConstant: 20),
            
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 21),
            temperatureLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 26),
        ])
        
        NSLayoutConstraint.activate([
            weatherIcon.heightAnchor.constraint(equalToConstant: 86),
            weatherIcon.widthAnchor.constraint(equalToConstant: 86),
            weatherIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26),
            weatherIcon.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor),
            weatherIcon.leadingAnchor.constraint(equalTo: temperatureLabel.trailingAnchor, constant: 15)
        
        ])
    }
}
