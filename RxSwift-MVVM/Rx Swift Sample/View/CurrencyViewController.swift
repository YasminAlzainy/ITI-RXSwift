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
import RxCocoa

class CurrencyViewController: UIViewController {
    var dispoesBag : DisposeBag?
    var viewModel  = CurrencyViewModel()
   
    @IBOutlet weak var currencyTable: UITableView!
    
    func showDictionaryOfCurrency(currencyDict: [String : Double]) {
        print(currencyDict.values)
        print(currencyDict.indices)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getCurrency(url:"https://api.exchangeratesapi.io/latest")

//        viewModel.dataObservable.subscribe(onNext: { (<#[String : Any]#>) in
//            <#code#>
//        }, onError: <#T##((Error) -> Void)?##((Error) -> Void)?##(Error) -> Void#>, onCompleted: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>, onDisposed: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
    }
    
    
}
