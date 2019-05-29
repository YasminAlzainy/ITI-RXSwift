//
//  Throttling&DebounceController.swift
//  Rx Swift Sample
//
//  Created by Yasmin Ayman on 22/09/1440 AH.
//  Copyright © 1440 Abd elrhman. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
class Throttling_DebounceController: UIViewController {

    var disposeBag = DisposeBag()
    @IBOutlet weak var btn_debounce: UIButton!
    @IBOutlet weak var btn_Throttle: UIButton!
    @IBOutlet weak var tf_name: UITextField!
    @IBOutlet weak var label_searchResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        btn_debounce.rx.tap.debounce(3, scheduler: MainScheduler.asyncInstance).subscribe({ (_) in
            print("tab_debounce")
        }).disposed(by: disposeBag)
        
        btn_Throttle.rx.tap.throttle(3, scheduler: MainScheduler.asyncInstance).subscribe ({ (_) in
            print("tab_throttle")
        }).disposed(by: disposeBag)
        
        
//        let search = tf_name.rx.controlEvent(.editingDidEndOnExit).asObservable()
//          .subscribe({ [weak self] _ in
//                    self?.label_searchResult.text = self?.tf_name.text
//                }).disposed(by: disposeBag)
        
        let search = tf_name.rx.controlEvent(.editingChanged).asObservable().throttle(3, scheduler: MainScheduler.asyncInstance)
            .subscribe({ [weak self] _ in
             self?.label_searchResult.text = self?.tf_name.text
            }).disposed(by: disposeBag)
    }

}

