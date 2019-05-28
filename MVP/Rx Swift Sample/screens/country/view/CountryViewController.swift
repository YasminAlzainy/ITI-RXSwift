//
//  CountryViewController.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 21/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import UIKit
import RxSwift
import RxAlamofire
//import RxCocoa
import Alamofire

class CountryViewController: UIViewController , CountryViewDelegate {
    @IBOutlet weak var myTableView: UITableView!
    func showDictionaryOfCurrency(currencyDict: [String : Double]) {
        print(currencyDict.values)
        //myTableView.rx.
        print(currencyDict.indices)
    }
    
    @IBOutlet weak var countryTable: UITableView!
   
    var dispoesBag : DisposeBag?
    var presenter : CountryPresenterDelegate? = CountryPresenter()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setDelegate(countryControllerDelegate: self )
        
        connectToAPI(url: "https://api.exchangeratesapi.io/latest")
    }
    
    func connectToAPI(url : String)  {
        presenter?.connectToAPI(url: url)
    }

}
