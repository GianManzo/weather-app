// BackgroundView.swift

import UIKit

class BackgroundView: UIImageView {
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}



extension BackgroundView {
    // constraint is using when need add "css" responsive in "div", view controller,
    func setupConstraints(in superview: UIView) {
        self.image = UIImage(named: "Background")
        self.contentMode = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        ])
    }
}
