//
//  ViewController.swift
//  DictToModel
//
//  Created by 小菜 on 16/12/1.
//  Copyright © 2016年 蔡凌云. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var homeModleArray: [HomeModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        HomeModel.loadHomeData(para: 1) { (homeModleArray: [HomeModel]?) in
            self.homeModleArray = homeModleArray
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

