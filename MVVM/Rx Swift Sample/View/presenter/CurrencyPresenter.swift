//
//  CountryPresenter.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 22/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import Foundation

class CurrencyPresenter: CurrencyPresenterDelegate {

    var networkConnection : NetworkDelegate? = NetworkConnection()
    var countryController : CurrencyViewDelegate?
    
    func setDelegate(countryControllerDelegate: CurrencyViewDelegate) {
        self.countryController = countryControllerDelegate
        self.networkConnection?.setDelagte(countryPresenterDelagte: self)
    }
    
    func connectToAPI(url: String) {
        networkConnection?.connection(url: url)
    }

    func dictionaryOfCurrency(currencyDict: [String : Double]) {
        countryController?.showDictionaryOfCurrency(currencyDict: currencyDict)
    }
    
}
