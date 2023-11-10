import UIKit

class Header: UIView {
    
    init(superview: UIView) {
        super.init(frame: .zero)
        superview.addSubview(self)
        setupUI()
        setupConstraints(in: superview)
    }
    
    private var primaryColor: String = "primaryColor"
    private var sunIcon: String = "sunIcon"
    
    private lazy var cityLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy var weatherIcon: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    private func setupUI() {
        layer.cornerRadius = 20
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = UIFont.systemFont(ofSize: 20)
        cityLabel.text = "Americana"
        cityLabel.textAlignment = .center
        cityLabel.textColor = UIColor(named: primaryColor)
        
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.textColor = UIColor(named: primaryColor)
        temperatureLabel.text = "25°C"
        temperatureLabel.font = UIFont.systemFont(ofSize: 70, weight: .bold)
        temperatureLabel.textAlignment = .left
        
        weatherIcon.translatesAutoresizingMaskIntoConstraints = false
        weatherIcon.image = UIImage(named: sunIcon)
        weatherIcon.contentMode = .scaleAspectFit
        
        
        addSubview(cityLabel);
        addSubview(temperatureLabel)
        addSubview(weatherIcon)
    }
    
    private func setupConstraints(in superview: UIView) {
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
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
