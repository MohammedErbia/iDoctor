//
//  APIRouter.swift
//  Gift
//
//  Created by osama on 4/22/20.
//  Copyright © 2020 Gift. All rights reserved.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    case home
  
    
    
    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
       
        case .home:
            return .get
       
        }
    }
    
    // MARK: - Path
    private var path: String {
        switch self {
            
        case .home:
            return "home"
       
        }
    }
    
    // MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .home:
            return nil
       
       

       
        }
    }
    
    // MARK: - headers
  private  var headers: HTTPHeaders? {
    switch self {

    case .home:
        return nil
   
    }

    }

    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try Constant.ProductionServer.baseURL.asURL()
        
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        // Common Headers
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.acceptType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.contentType.rawValue)
        urlRequest.setValue(ContentType.json.rawValue, forHTTPHeaderField: HTTPHeaderField.authentication.rawValue)
        
        
       // urlRequest.allHTTPHeaderFields = Headers.generateHeader()
        //urlRequest.allHTTPHeaderFields = WebserviceConfig().generateHeader()

        // Parameters
        if let parameters = parameters {
            do {
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        /*
        if let header = headers {
            do{
//                urlRequest.allHTTPHeaderFields = headers
                
            } catch{
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }

        }*/
        return urlRequest
    }
}
struct Headers {

/// - Returns: A configured header in the form of JSON dictionary.
func generateHeader() -> [String: Any] {
    var headerDict = [String: Any]()
    headerDict["Authorization"] = "application/json"
    headerDict["token"] = "fyfrgjirgjrigjrigjri"
    return headerDict
    }
    
}
