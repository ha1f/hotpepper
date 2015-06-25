//
//  LocationModel.swift
//  hotpepper
//
//  Created by 山口 智生 on 2015/06/25.
//  Copyright (c) 2015年 NextVanguard. All rights reserved.
//

import Foundation
import CoreLocation

class LocationModel: NSObject, CLLocationManagerDelegate{
    private var manager: CLLocationManager!
    
    private var latitude: Double!
    private var longitude: Double!
    
    override init(){
        super.init()
        manager = CLLocationManager()
        manager.delegate = self
    }
    func getManager()->CLLocationManager{
        return self.manager
    }
    
    func getLat()->Double!{
        return self.latitude
    }
    func getLon()->Double!{
        return self.longitude
    }
    
    func startUpdatingLocation(distanceFilter: CLLocationDistance){
        
        let status = CLLocationManager.authorizationStatus()//セキュリティ認証のステータスを取得
        
        // まだ認証が得られていない場合は、認証ダイアログを表示
        if(status == CLAuthorizationStatus.NotDetermined) {
            println("LocationAuthorizationStatus:\(status)");
            manager.requestWhenInUseAuthorization()//認証ダイアログを表示
        }
        
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.distanceFilter = distanceFilter
        
        manager.startUpdatingLocation()
    }
    
    func stopUpdatingLocation(){
        manager.stopUpdatingLocation()
    }
    
    
    // 位置情報取得に成功したときに呼び出されるデリゲート.
    func locationManager(manager: CLLocationManager!,didUpdateLocations locations: [AnyObject]!){
        self.latitude = manager.location.coordinate.latitude
        self.longitude = manager.location.coordinate.longitude
        
        println(self.latitude)
        println(self.longitude)
    }
    
    // 位置情報取得に失敗した時に呼び出されるデリゲート.
    func locationManager(manager: CLLocationManager!,didFailWithError error: NSError!){
        println("location error")
    }
    
    func locationManager(manager: CLLocationManager!, didChangeAuthorizationStatus status: CLAuthorizationStatus) {
        
        println("AuthorizationStatusChanged:");
        
        // 認証のステータスをログで表示.
        var statusStr = "";
        switch (status) {
        case .NotDetermined:
            statusStr = "NotDetermined"
        case .Restricted:
            statusStr = "Restricted"
        case .Denied:
            statusStr = "Denied"
        case .AuthorizedAlways:
            statusStr = "Authorized"
        case .AuthorizedWhenInUse:
            statusStr = "AuthorizedWhenInUse"
        }
        println(" CLAuthorizationStatus: \(statusStr)")
    }
}
