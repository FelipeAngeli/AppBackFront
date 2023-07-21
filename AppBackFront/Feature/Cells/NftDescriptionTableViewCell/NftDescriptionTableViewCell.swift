//
//  NftDescriptionTableViewCell.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 20/07/23.
//

import UIKit

class NftDescriptionTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: NftDescriptionTableViewCell.self)

    private lazy var screen: NftImageTableViewCellScreen = {
        let view = NftImageTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addViews(){
        contentView.addSubview(screen)
    }
    
    
    private func configConstraint(){
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    
    public func setupCell() {
        
    }
    


}
