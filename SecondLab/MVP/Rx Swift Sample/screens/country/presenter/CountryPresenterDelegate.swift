//
//  CountryPresenterDelegate.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 22/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import Foundation
protocol CountryPresenterDelegate {
    func setDelegate(countryControllerDelegate : CountryViewDelegate)
    func connectToAPI(url : String)
    func dictionaryOfCurrency(currencyDict : [String : Double])
}
