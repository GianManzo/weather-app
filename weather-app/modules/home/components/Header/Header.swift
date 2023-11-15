import UIKit


class Header: UIView {
    init(superview: UIView) {
        super.init(frame: .zero)
        superview.addSubview(self)
        setupUI()
        //setupConstraints(in: superview)
   
    }
    

    private var primaryColor: String = "primaryColor"
    private var sunIcon: String = "sunIcon"
    
    public lazy var cityLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var weatherIcon: UIImageView = {
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
    

    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
