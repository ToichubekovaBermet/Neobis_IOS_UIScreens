
import UIKit
import SnapKit

class ViewController : BaseController  {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "line.horizontal.3"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var buttonSearch: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.frame = CGRect(x: 0, y: 0, width: 25, height: 25)
        button.tintColor = .black
        button.addTarget(self, action: #selector(tappedFinance), for: .touchUpInside)
        return button
    }()
    
    private lazy var view1: UIView = {
        var view = UIView()
        return view
    }()
    
    private lazy var labelForBooks: UILabel = {
        var label = UILabel()
        label.text = "SOS"
        label.font = .systemFont(ofSize: 30)
        label.textColor = .black
        return label
    }()
    
    private lazy var textForBooks: UILabel = {
        var label = UILabel()
        label.text = "Mini meltdown? Get some Headspace in a hurry"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var imageBook: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Book")
        return image
    }()
    
    private lazy var imageforBook: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union")
        return image
    }()
    
    private lazy var view2: UIView = {
        var view = UIView()
        return view
    }()
    
    private lazy var labelForBookshelf: UILabel = {
        var label = UILabel()
        label.text = "On-the-Go"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25)
        label.textColor = .black
        return label
    }()
    
    private lazy var textForBookshelf: UILabel = {
        var label = UILabel()
        label.text = "Mindful living? Get your Headspace to go"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var imageBookshelf: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Bookshelf")
        return image
    }()
    
    private lazy var imageforBookshelf: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union")
        return image
    }()
    
    private lazy var view3: UIView = {
        var view = UIView()
        return view
    }()
    
    private lazy var labelForDiploma: UILabel = {
        var label = UILabel()
        label.text = "Classic"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25)
        label.textColor = .black
        return label
    }()
    
    private lazy var textForDiploma: UILabel = {
        var label = UILabel()
        label.text = "Like it simple? Get some extra Headspace"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var imageDiploma: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Diploma")
        return image
    }()
    
    private lazy var imageforDiploma: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union")
        return image
    }()
    
    private lazy var view4: UIView = {
        var view = UIView()
        return view
    }()
    
    private lazy var labelForGlobe: UILabel = {
        var label = UILabel()
        label.text = "SOS"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25)
        label.textColor = .black
        return label
    }()
    
    private lazy var textForGlobe: UILabel = {
        var label = UILabel()
        label.text = "Mindful living? Get your Headspace to go"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var imageGlobe: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Globe")
        return image
    }()
    
    private lazy var imageforGlobe: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Union")
        return image
    }()
    
    
    override func setupView() {
        view.backgroundColor = .white
        view.addSubview(button)
        view.addSubview(buttonSearch)
        view.addSubview(view1)
        view.addSubview(labelForBooks)
        view.addSubview(textForBooks)
        view1.addSubview(imageBook)
        view1.addSubview(imageforBook)
        view.addSubview(view2)
        view2.addSubview(labelForBookshelf)
        view2.addSubview(textForBookshelf)
        view2.addSubview(imageBookshelf)
        view2.addSubview(imageforBookshelf)
        view.addSubview(view3)
        view3.addSubview(labelForDiploma)
        view3.addSubview(textForDiploma)
        view3.addSubview(imageDiploma)
        view3.addSubview(imageforDiploma)
        view.addSubview(view4)
        view4.addSubview(labelForGlobe)
        view4.addSubview(textForGlobe)
        view4.addSubview(imageGlobe)
        view4.addSubview(imageforGlobe)
    }
    override func setupConstraints() {
        
        button.snp.makeConstraints{ button in
            button.top.equalToSuperview().offset(70)
            button.leading.equalToSuperview().offset(24)
        }
        buttonSearch.snp.makeConstraints{ button in
            button.top.equalToSuperview().offset(70)
            button.leading.equalToSuperview().offset(350)
            button.width.equalTo(25)
            button.height.equalTo(25)
        }
        
        view1.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.trailing.leading.equalToSuperview().inset(0)
            make.top.equalToSuperview().inset(99)
            make.width.equalToSuperview().offset(380)
            make.height.equalTo(175)
        }
        
        labelForBooks.snp.makeConstraints{ label in
            label.centerX.equalToSuperview()
            label.top.equalToSuperview().inset(139)
            label.leading.equalToSuperview().inset(26)
            label.width.equalTo(55)
            label.height.equalTo(39)
        }
        
        textForBooks.snp.makeConstraints{ text in
            text.centerX.equalToSuperview()
            text.top.equalToSuperview().inset(180)
            text.leading.equalToSuperview().inset(26)
            text.trailing.equalToSuperview().inset(200)
        }
        
        imageBook.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(30)
            image.leading.equalToSuperview().offset(236)
            image.width.equalTo(100)
            image.height.equalTo(100)
        }
        
        imageforBook.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(70)
            image.leading.equalToSuperview().offset(360)
            image.width.equalTo(13)
            image.height.equalTo(26)
        }
        
        view2.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view1.snp.bottom).offset(0)
            make.trailing.leading.equalToSuperview().inset(0)
            make.width.equalToSuperview().offset(380)
            make.height.equalTo(175)
        }
        
        labelForBookshelf.snp.makeConstraints{ label in
            label.top.equalToSuperview().offset(40)
            label.leading.equalToSuperview().offset(155)
            label.width.equalTo(121)
            label.height.equalTo(39)
        }
        
        textForBookshelf.snp.makeConstraints{ text in
            text.top.equalTo(labelForBookshelf.snp.bottom).offset(10)
            text.leading.equalToSuperview().offset(155)
            text.width.equalTo(150)
        }
        
        imageBookshelf.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(30)
            image.leading.equalToSuperview().offset(30)
            image.width.equalTo(100)
            image.height.equalTo(100)
        }
        imageforBookshelf.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(70)
            image.leading.equalToSuperview().offset(360)
            image.width.equalTo(13)
            image.height.equalTo(26)
        }
        view3.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view2.snp.bottom).offset(0)
            make.trailing.leading.equalToSuperview().inset(0)
            make.width.equalToSuperview().offset(380)
            make.height.equalTo(175)
        }
        labelForDiploma.snp.makeConstraints{ label in
            label.top.equalToSuperview().offset(40)
            label.leading.equalToSuperview().offset(26)
            label.width.equalTo(121)
            label.height.equalTo(39)
        }
        textForDiploma.snp.makeConstraints{ text in
            text.top.equalTo(labelForDiploma.snp.bottom).offset(10)
            text.leading.equalToSuperview().offset(26)
            text.width.equalTo(150)
        }
        imageDiploma.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(30)
            image.leading.equalToSuperview().offset(236)
            image.width.equalTo(100)
            image.height.equalTo(100)
        }
        imageforDiploma.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(70)
            image.leading.equalToSuperview().offset(360)
            image.width.equalTo(13)
            image.height.equalTo(26)
        }
        view4.snp.makeConstraints{ make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view3.snp.bottom).offset(0)
            make.trailing.leading.equalToSuperview().inset(0)
            make.width.equalToSuperview().offset(380)
            make.height.equalTo(175)
        }
        labelForGlobe.snp.makeConstraints{ label in
            label.top.equalToSuperview().offset(40)
            label.leading.equalToSuperview().offset(155)
            label.width.equalTo(121)
            label.height.equalTo(39)
        }
        textForGlobe.snp.makeConstraints{ text in
            text.top.equalTo(labelForGlobe.snp.bottom).offset(10)
            text.leading.equalToSuperview().offset(155)
            text.width.equalTo(150)
        }
        imageGlobe.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(30)
            image.leading.equalToSuperview().offset(30)
            
        }
        imageforGlobe.snp.makeConstraints{ image in
            image.top.equalToSuperview().offset(70)
            image.leading.equalToSuperview().offset(360)
            image.width.equalTo(13)
            image.height.equalTo(26)
        }
    }
}

extension ViewController {
    
    @objc func tapped() {
        let vc = TabBarFinance()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func tappedFinance() {
        let vc = TabBarFinance()
        navigationController?.pushViewController(vc, animated: true)
    }
}
