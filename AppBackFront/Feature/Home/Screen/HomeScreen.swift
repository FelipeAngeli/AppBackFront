//
//  HomeScreen.swift
//  AppBackFront
//
//  Created by Felipe  on 26/04/23.
//

import UIKit

class HomeScreen: UIView {

    
    lazy var viewBackGound: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        return view
    }()
    
    lazy var LogoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "vector")
        return imageView
    }()
    
    lazy var searchBar: UISearchBar = {
       let serachBar = UISearchBar()
        serachBar.translatesAutoresizingMaskIntoConstraints = false
        serachBar.clipsToBounds = true
        serachBar.layer.cornerRadius = 20
        serachBar.placeholder = "Pesquise pelo nome:"
        return serachBar
    }()
    
    lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView()
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        //TO DO: Register
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 24, bottom: 0, right: 24)
        layout.scrollDirection = .horizontal
        collectionView.setCollectionViewLayout(layout, animated: false)
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        // TO DO: Register
        tableView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        tableView.separatorColor = .none
        return tableView
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
    }
    
    func addViews() {
        addSubview(viewBackGound)
        viewBackGound.addSubview(LogoImageView)
        viewBackGound.addSubview(searchBar)
        viewBackGound.addSubview(collectionView)
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
