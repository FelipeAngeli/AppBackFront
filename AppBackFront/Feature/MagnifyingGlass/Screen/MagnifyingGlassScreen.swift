//
//  MagnifyingGlassScreen.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 02/08/23.
//

import UIKit

protocol MagnifyingGlassScreenDelegate: AnyObject {
    func tappedBackButton()
}

class MagnifyingGlassScreen: UIView {

    private weak var delegate: MagnifyingGlassScreenDelegate?
    
    public func delegate(delegate: MagnifyingGlassScreenDelegate?) {
        self.delegate = delegate
    }
    
    lazy var nftImagiView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage(systemName: "arrowshape.turn.up.backward.fill"), for: .normal)
        button.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedBackButton(){
        delegate?.tappedBackButton()
    }
 
    override init(frame: CGRect) {
        super.init(frame: frame)
        addView()
        configConstrainsts()
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addView() {
        addSubview(nftImagiView)
        addSubview(backButton)
    }
    
    
    private func configConstrainsts() {
        NSLayoutConstraint.activate([
            
            nftImagiView.topAnchor.constraint(equalTo: topAnchor),
            nftImagiView.leadingAnchor.constraint(equalTo: leadingAnchor),
            nftImagiView.trailingAnchor.constraint(equalTo: trailingAnchor),
            nftImagiView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 35),
            backButton.widthAnchor.constraint(equalToConstant: 35),

            

        ])
    }
    
}
