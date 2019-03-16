//
//  ViewController.swift
//  XcodeGenSample
//
//  Created by Morita Jun on 2019/03/09.
//  Copyright © 2019 KamuiProject. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Alamofireをimportしてメソッドが呼べることを確認するための処理です。
        Alamofire.request("https://connpass.com/api/v1/event/?keyword=ios").responseJSON {
            res in
            if res.result.isSuccess {
                if let returnValue = res.result.value {
                    print(returnValue)
                }
            } else {
                print("Error!")
            }
        }
    }


}

