//
//  HotPepperApi.swift
//  hotpepper
//
//  Created by 山口 智生 on 2015/06/25.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation
import SwiftyJSON

class HotPepperApi {
    private static let url_base: String! = "http://webservice.recruit.co.jp/hotpepper/gourmet/v1/"
    private static let key: String! = "150d3d7de833b99b"
    private static var format: String! = "json"
    
    
    static func getDataWithWord(word: String, completionHandler:(NSData!, NSURLResponse!, NSError!) -> Void){
        let encodedQuery: String = word.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        let urlString = "\(url_base)?key=\(self.key)&format=\(format)&name=\(encodedQuery)"
        sendGetRequest(NSURL(string: urlString)!, completionHandler: completionHandler)
    }
    
    static func getDataWithLocation(lon: Double, lat: Double, completionHandler:(NSData!, NSURLResponse!, NSError!) -> Void){
        let urlString = "\(url_base)?key=\(self.key)&format=\(format)&lat=\(lat)&lng=\(lon)"
        sendGetRequest(NSURL(string: urlString)!,completionHandler: completionHandler)
    }
    
    static func getDataWithParam(params: Dictionary<String,String>, completionHandler:(NSData!, NSURLResponse!, NSError!) -> Void){
        var urlString = url_base + "?" + "key=\(self.key)" + "&format=\(format)"
        for (name, data) in params {
            urlString = urlString + "&" + name + "=" + data.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
        }
        sendGetRequest(NSURL(string: urlString)!,completionHandler: completionHandler)
    }
    
    private static func sendGetRequest(url: NSURL, completionHandler:(NSData!, NSURLResponse!, NSError!) -> Void){
        println(url)
        var myRequest = NSMutableURLRequest(URL:  url)
        myRequest.HTTPMethod = "GET"
        
        // use NSURLSession
        var task = NSURLSession.sharedSession().dataTaskWithRequest(myRequest, completionHandler: completionHandler)
        task.resume()
    }
}
