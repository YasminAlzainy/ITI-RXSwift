//
//  networkDelegate.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 22/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import Foundation

protocol NetworkDelegate {
    
    func connection(url : String)
    
    func setDelagte(countryPresenterDelagte : CurrencyPresenterDelegate)
    
}
