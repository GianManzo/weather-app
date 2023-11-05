import UIKit

class HeaderView: UIView {
    
    init(superview: UIView) {
        super.init(frame: .zero)
        superview.addSubview(self)
        setupUI()
        setupConstraints(in: superview)
    }
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private func setupUI() {
        layer.cornerRadius = 20
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = UIFont.systemFont(ofSize: 20)
        cityLabel.text = "Americana"
        cityLabel.textAlignment = .center
        
       addSubview(cityLabel)
    }
    
    private func setupConstraints(in superview: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.safeAreaLayoutGuide.topAnchor, constant: 60),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 35),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -35),
            heightAnchor.constraint(equalToConstant: 169),
            cityLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
