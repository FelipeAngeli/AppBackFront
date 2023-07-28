//
//  ListOfferstableViewCell.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 28/07/23.
//

import UIKit
import AlamofireImage

class ListOfferstableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: ListOfferstableViewCell.self)
    
    var viewModel: LastestDealTableViewCellViewModel = LastestDealTableViewCellViewModel()
    
    private lazy var screen: ListOfferstableViewCellScreen = {
        let view = ListOfferstableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
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
    
    
    public func setupCell(data: LatestDeal, isInicial: Bool, isFinal: Bool ) {
        if let url = URL(string: data.userImage ?? "") {
            screen.userImageView.af.setImage(withURL: url, placeholderImage: UIImage(systemName: "person.circle.fill")?.withTintColor(.black))
        }

        screen.layer.borderColor = UIColor.white.cgColor
        screen.layer.borderWidth = 0.5
        screen.nameUserLabel.text = data.userName ?? ""
        screen.nftPriceLabel.text = "\(data.nftPrice ?? 0) ETH"
        screen.lastVizualizationLabel.text = data.lastAccess ?? ""

    }

}



