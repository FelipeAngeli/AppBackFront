//
//  NftDetailViewModel.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 13/07/23.
//

import UIKit

class NftDetailViewModel {

    private let nft: Nft
    
    init(nft: Nft) {
        self.nft = nft
    }
    
    
    public var numberOfRowsInSection: Int {
        return 1
    }
    
    public var nftImage: String {
        return nft.nftImage ?? ""
    }
    
    
}
