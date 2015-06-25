//
//  HotPepperModel.swift
//  hotpepper
//
//  Created by 山口 智生 on 2015/06/25.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation
import SwiftyJSON

class HotPepperModel :NSObject{
    override init(){
        
    }
    
    var shopData : [Shop] = []
    
    
    func clearData(){
        shopData = []
    }
    
    func setDataClosure() -> ((NSData!, NSURLResponse!, NSError!) -> Void){
        var completionHandler:(NSData!, NSURLResponse!, NSError!) -> Void = { data, response, error in
            if (error == nil) {
                let json = JSON(data: data)
                for i in 0...9{
                    //正常
                    if let name=json["results"]["shop"][i]["name"].string {
                        println(name)
                        
                        var tmpShop: Shop = Shop()
                        tmpShop.name = name
                        tmpShop.photo.mobile.l = json["results"]["shop"][i]["photo"]["mobile"]["l"].string!
                        tmpShop.photo.mobile.s = json["results"]["shop"][i]["photo"]["mobile"]["s"].string!
                        
                        self.shopData.append(tmpShop)
                    }
                }
            } else {
                println(error)
            }
        }
        
        return completionHandler
    }
    
    
    func getDataWithWord(word: String){
        //var params = ["name": word]
        //HotPepperApi.getDataWithParam(params, completionHandler: completionHandler)

        HotPepperApi.getDataWithWord(word, completionHandler: self.setDataClosure())
        
    }
    
    func getDataWithLocation(lon: Double, lat: Double){
        //var params = ["lat": "\(lat)", "lng": "\(lon)"]
        //HotPepperApi.getDataWithParam(params, completionHandler: self.setDataClosure())
        
        HotPepperApi.getDataWithLocation(lon, lat: lat, completionHandler: self.setDataClosure())
    }
    
}