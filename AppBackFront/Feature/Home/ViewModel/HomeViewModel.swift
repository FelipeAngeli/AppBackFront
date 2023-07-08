//
//  HomeViewModel.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 20/06/23.
//

import UIKit
import Alamofire


protocol HomeViewModeldelegate: AnyObject {
    func success()
    func error()
}


class HomeViewModel{
    
    private let service: HomeService = HomeService()
    private var nftData: NFTData?
    weak private var delegate: HomeViewModeldelegate?
    
    public func delegate(delegate: HomeViewModeldelegate?){
        self.delegate = delegate
    }
    
    
    public func fetchRequest(_ typeFetch: TypeFetch) {
        switch typeFetch {
            
        case .mock:
            service.getHomeFromJson { result, failure in
                if let result {
                    print("success")
                    self.nftData = result
                    self.delegate?.success()
                } else {
                    print(failure as Any)
                    self.delegate?.error()

                }
            }
        case .request:
            service.getHome { result, failure in
                if let result {
                    print("success")
                    self.nftData = result
                    self.delegate?.success()

                } else {
                    print(failure as Any)
                    self.delegate?.error()

                }
                
            }
        }
       
    }
    
    //MARK: - FIlterCollectionView
    
    public   var numberofItemsInSection: Int {
        return nftData?.filterListNft?.count ?? 0
    }
    
    public  func loadCurrentFilterNft(indexPath: IndexPath) -> FilterNft {
        return nftData?.filterListNft?[indexPath.row] ?? FilterNft()
    }
    
    public  var sizeForItemAt: CGSize {
        return CGSize(width: 100, height: 34)
    }

}
