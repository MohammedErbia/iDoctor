//
//  Constants.swift
//  Gift
//
//  Created by osama on 4/22/20.
//  Copyright © 2020 Gift. All rights reserved.
//

import Foundation
import Alamofire
struct Constant {
    struct ProductionServer {
        static let baseURL = "https://www.gazagift.com/api/"
    }
    //MARK: - API Parametr Key
    struct APIParameterKey {
        static let password = "password"
        static let name = "name"
        static let phone = "phone"
        static let city = "city"
        static let gender = "gender"
        static let tokenNotfiaction = "tokenNotfiaction"
        static let email = "email"
        static let rate = "rate"
        static let user_id = "user_id"
        static let product_id = "product_id"
        static let comment = "comment"
        static let key = "key"
        
        
        
        static let id = "id"
        static let token = "token"
        static let userId = "user_id"
        static let cart = "cart"
    }
    
}

enum HTTPHeaderField: String {
    case authentication = "Authorization"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
}

enum ContentType: String {
    case json = "application/json"
}
struct WebserviceConfig {
    /// Generates common headers specific to APIs. Can also accept additional headers if demanded by specific APIs.
    ///
    /// - Returns: A configured header in the form of JSON dictionary.
    func generateHeader() -> [String: String] {
        var headerDict = [String: String]()
        headerDict["Content-Type"] = "application/json"
        
        return headerDict
    }
}
