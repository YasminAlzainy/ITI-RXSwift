//
//  ApiClient.swift
//  ApiClient
//
//  Created by Yasmin Ayman on 24/09/1440 AH.
//  Copyright © 1440 yasmin.ayman. All rights reserved.
//

import Foundation
import Alamofire


class ApiClient: NSObject {
    
    enum HTTPServerMethod : String {
        case get = "GET"
        case post = "POST"
        case delete = "DELETE"
        case options = "OPTIONS"
        case head = "Head"
        case patch = "PATCH"
    }
    
    func executeApiDataClient(urlString : String , httpMethod : HTTPServerMethod , pramaters : [String:Any]? ,
    header : [String:String]? , successHandler : @escaping(Data) -> Void , faluireHandler : @escaping(Error) -> Void ) {
        guard let apiURL = URL(string: urlString) else {return}
     
        if let isReachable = NetworkReachabilityManager(host: apiURL.host ?? "")?.isReachable , isReachable == true{
            Alamofire.request(apiURL, method: HTTPMethod(rawValue: httpMethod.rawValue) ?? .get, parameters: pramaters, headers: header).responseData { (dataResponse) in
                
                if let error = dataResponse.error{
                    faluireHandler(error)
                }
                else if let data = dataResponse.data{
                    successHandler(data)
                }
            }
        }
        else
        {
            let error = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue, userInfo: nil) as Error
            faluireHandler(error)
        }
    }
    
    
    
    
    func executeApiJsonClient(urlString : String , httpMethod : HTTPServerMethod , pramaters : [String:Any]? ,
                              header : [String : String]? , successHandler : @escaping(Data) -> Void ,
                              faluireHandler : @escaping(Error) -> Void)  {
        guard let apiURL = URL(string: urlString) else {return}
        
        if let isReachableUrl = NetworkReachabilityManager(host: apiURL.host ?? "")?.isReachable , isReachableUrl == true{
            
            Alamofire.request(apiURL, method: HTTPMethod(rawValue: httpMethod.rawValue) ?? .get, parameters: pramaters, headers: header).responseJSON { (dataResponse) in
                
                if let error = dataResponse.error{
                    faluireHandler(error)
                }
                else if let data = dataResponse.data{
                    successHandler(data)
                }
            }
        }
        else
        {
            let error = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue, userInfo: nil) as Error
            faluireHandler(error)
        }
    }
}
