// HeaderView.swift

import UIKit

class HeaderView: UIView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}


extension HeaderView {
    func setupConstraints(in superview: UIView) {
        layer.cornerRadius = 20
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: 60),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 35),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -35),
            heightAnchor.constraint(equalToConstant: 169)
        ])
    }
}
