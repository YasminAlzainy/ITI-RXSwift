//
//  CurrencyViewModel.swift
//  MVVMRx
//
//  Created by Yasmin Ayman on 23/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class CurrencyViewModel: NSObject {
    var disposeBag = DisposeBag()

    var networkConnection = NetworkConnection()
    public var dataObservable : Observable<[String:Any]>
    private var dataSubject = PublishSubject<[String:Any]>()
    
    
    override init() {
        dataObservable  = dataSubject.asObservable()
        
    }
    
    func getCurrency(url : String) {
        networkConnection.getCurrency(url: url)
       
        //dataSubject.onNext()
    }
    
}
