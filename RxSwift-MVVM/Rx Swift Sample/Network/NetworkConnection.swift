//
//  networkConnection.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 22/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import Foundation
import RxAlamofire
import RxSwift
import RxCocoa
import Alamofire

class NetworkConnection  {
    
    var disposeBag = DisposeBag()
    enum HTTPServerMethod : String {
        case get = "GET"
        case post = "POST"
        case delete = "DELETE"
        case options = "OPTIONS"
        case head = "Head"
        case patch = "PATCH"
    }
    
    
    func executeApiJsonClient(urlString : String , httpMethod : HTTPServerMethod , pramaters : [String:Any]? ,
                              header : [String : String]? , successHandler : @escaping(Dictionary<String,Any>) -> Void ,
                              faluireHandler : @escaping(Error) -> Void)  {
        guard let apiURL = URL(string: urlString) else {return}
        
        if let isReachableUrl = NetworkReachabilityManager(host: apiURL.host ?? "")?.isReachable , isReachableUrl == true{
            
            Alamofire.request(apiURL, method: HTTPMethod(rawValue: httpMethod.rawValue) ?? .get, parameters: pramaters, headers: header).responseJSON { (dataResponse) in
                
                if let error = dataResponse.error{
                    faluireHandler(error)
                }
                else if let json : [String: Any] = dataResponse.result.value as? [String:Any]{
                    successHandler(json)
                }
            }
        }
        else
        {
            let error = NSError(domain: NSURLErrorDomain, code: URLError.notConnectedToInternet.rawValue, userInfo: nil) as Error
            faluireHandler(error)
        }
    }
    
    
    func getCurrency(url : String) {
        var rateDict = [String : Double] ()
        RxAlamofire.requestJSON(.get, url).subscribe(onNext : { (response , json) in
            do
            {
                let jsonDict = try json as! Dictionary<String,Any>
                let currency = Currency(base: jsonDict["base"] as! String, rates: jsonDict["rates"] as! [String : Double], date: jsonDict["date"] as! String)
                rateDict = currency.rates
            }
            catch {print(error)}
        }).disposed(by: disposeBag)
    }
    
    
}
