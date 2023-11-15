// BackgroundView.swift

import UIKit

class Background: UIImageView {
    
    init(superview: UIView) {
        super.init(frame: .zero)
        superview.addSubview(self)
        setupUI()
        //setupConstraints(in: superview)
    }
    
    private var background: String = "background"
    
    private func setupUI() {
        image = UIImage(named: background)
        contentMode = .scaleAspectFill
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    // constraint is using when need add "css" responsive in "div", view controller,
 
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
