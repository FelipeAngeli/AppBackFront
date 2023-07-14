//
//  NftDetailVC.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 13/07/23.
//

import UIKit

class NftDetailVC: UIViewController {

    private let viewModel:NftDetailViewModel
    
    required init(nft: Nft) {
        viewModel = NftDetailViewModel(nft: nft)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
   

}
