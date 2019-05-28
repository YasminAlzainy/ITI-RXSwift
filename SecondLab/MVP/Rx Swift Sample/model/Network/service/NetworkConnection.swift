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

class NetworkConnection : NetworkDelegate {
    
    var countryPresenter : CountryPresenterDelegate?
    var disposeBag = DisposeBag()
    
    func setDelagte(countryPresenterDelagte: CountryPresenterDelegate) {
        self.countryPresenter  = countryPresenterDelagte
    }
    
    func connection(url : String) {
        let currencyDict = RxAlamofire.requestJSON(.get, url).subscribe(onNext : { (response , json) in
            do
            {
                let jsonDict = try json as! Dictionary<String,Any>
                let currency = Currency(base: jsonDict["base"] as! String, rates: jsonDict["rates"] as! [String : Double], date: jsonDict["date"] as! String)
               // print(currency.rates["IDR"])
        
                self.countryPresenter?.dictionaryOfCurrency(currencyDict: currency.rates)

            }
            catch {print(error)}
        }).disposed(by: disposeBag)
        print(currencyDict)
}
    
}
