//
//  AppDelegate.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var oldCurrency : Int = UserDefaults.standard.integer(forKey: "coins")
    
    var oldWins : Int = UserDefaults.standard.integer(forKey: "wins")
    var oldLoses : Int = UserDefaults.standard.integer(forKey: "loses")
    var oldplaytime : Int = UserDefaults.standard.integer(forKey: "playtime")
    
    var oldCoinStore : Int = UserDefaults.standard.integer(forKey: "coinsStore")
    
    var oldCostRetroB : Bool = UserDefaults.standard.bool(forKey: "costRetroB")
    var oldCostRainbowB : Bool = UserDefaults.standard.bool(forKey: "costRainbowB")
    var oldCostLightB : Bool = UserDefaults.standard.bool(forKey: "costLightB")
    var oldCostSoccerB : Bool = UserDefaults.standard.bool(forKey: "costSoccerB")
    
    var oldCostSpaceDustB : Bool = UserDefaults.standard.bool(forKey: "costSpaceDustB")
    var oldCostAcidB : Bool = UserDefaults.standard.bool(forKey: "costAcidB")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        coin += oldCurrency
        win += oldWins
        lose += oldLoses
        secondsPlus += oldplaytime
        
        // Bool
        costRetroB = oldCostRetroB
        costRainbowB = oldCostRainbowB
        costLightB = oldCostLightB
        costSoccerB = oldCostSoccerB
        
        costSpaceDustB = oldCostSpaceDustB
        costAcidB = oldCostAcidB
        
        //STORE VALUES
        coin = oldCoinStore
        
        
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        GADMobileAds.configure(withApplicationID: "ca-app-pub-5267056163100832~7841072325")
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

