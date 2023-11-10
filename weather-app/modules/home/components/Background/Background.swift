// BackgroundView.swift

import UIKit

class Background: UIImageView {
    
    init(superview: UIView) {
        super.init(frame: .zero)
        superview.addSubview(self)
        setupUI()
        setupConstraints(in: superview)
    }
    
    private var background: String = "background"
    
    private func setupUI() {
        image = UIImage(named: background)
        contentMode = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    // constraint is using when need add "css" responsive in "div", view controller,
    private func setupConstraints(in superview: UIView) {

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor),
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
