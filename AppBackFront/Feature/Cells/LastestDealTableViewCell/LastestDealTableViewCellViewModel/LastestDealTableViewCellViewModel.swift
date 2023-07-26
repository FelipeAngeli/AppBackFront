//
//  LastestDealTableViewCellViewModel.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 25/07/23.
//

import UIKit

class LastestDealTableViewCellViewModel {

    var nft: Nft?
    
    public func setNft(nft: Nft){
        self.nft = nft
    }
    
    public var title: String {
        return nft?.titleLatestDeals ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return nft?.latestDeals?.count ?? 0
    }
    
    public var heightForRowAt: CGFloat {
        return 70
    }
    
}
