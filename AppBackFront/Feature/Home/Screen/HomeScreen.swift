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
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "Vector")
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
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        collectionView.register(NftFilterCollectionViewCell.self, forCellWithReuseIdentifier: NftFilterCollectionViewCell.identifier)
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
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configCollectionViewProtocols(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource){
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    func configSearchbarDelegate(delegate: UISearchBarDelegate){
        searchBar.delegate = delegate
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 26/255, green: 26/255, blue: 1/255, alpha: 1.0)
        addViews()
        configConstraints()
    }
    
    func addViews() {
        addSubview(viewBackGound)
        viewBackGound.addSubview(logoImageView)
        viewBackGound.addSubview(searchBar)
        viewBackGound.addSubview(collectionView)
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            viewBackGound.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            viewBackGound.leadingAnchor.constraint(equalTo: leadingAnchor),
            viewBackGound.trailingAnchor.constraint(equalTo: trailingAnchor),
            viewBackGound.heightAnchor.constraint(equalToConstant: 200),
            
            logoImageView.topAnchor.constraint(equalTo: viewBackGound.topAnchor, constant: 5),
            logoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            logoImageView.heightAnchor.constraint(equalToConstant: 40),
            logoImageView.widthAnchor.constraint(equalToConstant: 40),
            
            searchBar.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            searchBar.leadingAnchor.constraint(equalTo: logoImageView.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            searchBar.heightAnchor.constraint(equalToConstant: 46),
            
            collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: viewBackGound.bottomAnchor),
            
            tableView.topAnchor.constraint(equalTo: viewBackGound.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
}
