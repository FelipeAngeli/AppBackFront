//
//  GenericService.swift
//  AppBackFront
//
//  Created by Felipe Angeli on 20/06/23.
//

//funciona como o controller

import Foundation
import Alamofire

//tratamento de erros
enum Error: Swift.Error {
    case fileNotFound(name: String)
    case fileDecodingFailed(name: String, Swift.Error)
    case errorRequest(AFError)
}

enum TypeFetch {
    case mock
    case request
}


protocol GenericService: AnyObject {
    typealias completion <T> = (_ result: T, _ failure: Error?) -> Void
}
