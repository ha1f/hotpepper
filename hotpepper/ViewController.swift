//
//  ViewController.swift
//  hotpepper
//
//  Created by 山口 智生 on 2015/06/25.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController{
    
    var locationModel: LocationModel!
    var hotPepperModel: HotPepperModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        locationModel = LocationModel()
        locationModel.startUpdatingLocation(100)
        
        hotPepperModel = HotPepperModel()
        hotPepperModel.getDataWithWord("モス")
        
        //while(locationModel.getLon() == nil){}
        
        //hotPepperModel.getDataWithLocation(locationModel.getLon(), lat: 35.669220)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

