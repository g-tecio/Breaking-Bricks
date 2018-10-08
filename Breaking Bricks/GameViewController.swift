//
//  GameViewController.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import Device_swift
import Lottie
import GoogleMobileAds

class GameViewController: UIViewController, GADInterstitialDelegate, GADRewardBasedVideoAdDelegate  {
    var value:Double = 1.0
    var timerIntro = Timer()
    let deviceType = UIDevice.current.deviceType
    var intro = LOTAnimationView()
    
     let skView = SKView()
    // MARK: App Properties
    
    //declare Interstitial Ad
    var interstitial: GADInterstitial!
    
    //declare VideoReward Ad
    var videoreward: GADRewardBasedVideoAd!
    
    /// Scene State Machine
    var sceneStateMachine: GKStateMachine!
    
    /// Scenes
    var gameScene: GameScene!
    var menuScene: MenuScene!
    
    var storeScene: StoreScene!
    var scoreScene: ScoreScene!
    
    // MARK: Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.view.isUserInteractionEnabled = false

//        if deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini ||  UIDevice.current.userInterfaceIdiom == .phone{
//            intro = LOTAnimationView(name: "Intro_Bricks")
//            print("INTRO NORMAL")
//        }else{
//            intro = LOTAnimationView(name: "Intro Bricks_iPad")
//            print("INTRO IPAD")
//        }
        
//        //SKView to present the scenes
//        intro.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
//        intro.center = self.view.center
//        intro.contentMode = .scaleAspectFill
        
        skView.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
        skView.center = self.view.center
        skView.contentMode = .scaleAspectFill
        skView.allowsTransparency = true
        
//        intro.play{ (finished) in
//           // view.addSubview(intro)
//            self.timerIntro = Timer.scheduledTimer(timeInterval: 0.10, target: self, selector: #selector(self.introTimer), userInfo: nil, repeats: true)
//        }
        
        /// MenuScene Setup
        menuScene = MenuScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        storeScene = StoreScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        scoreScene = ScoreScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        gameScene = GameScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        //load the videoreward
        loadVideoReward()
        
        skView.presentScene(menuScene)
        view.addSubview(skView)
//        view.addSubview(intro)

        
        
    }
    
    @objc func introTimer() {
        value = value - 0.1
        intro.alpha = CGFloat(value)
        if self.value < 0.1 {
            self.timerIntro.invalidate()
            self.view.isUserInteractionEnabled = true
            self.intro.removeFromSuperview()
        }
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .allButUpsideDown
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // functions that requiere the interstitial ad
    func createAndLoadInterstitial() -> GADInterstitial {
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-5267056163100832/5654904447")
        interstitial.delegate = self
        interstitial.load(GADRequest())
        return interstitial
    }
    func interstitialDidReceiveAd(_ ad: GADInterstitial) {
        self.interstitial.present(fromRootViewController: self)
    }
    
    //functions for the videoReward ad
    func loadVideoReward() {
        videoreward = GADRewardBasedVideoAd.sharedInstance()
        videoreward.delegate = self
        videoreward.load(GADRequest(), withAdUnitID: "ca-app-pub-5267056163100832/6814506085")
        videoreward.present(fromRootViewController: self)
    }
    func showVideoReward(){
        if videoreward.isReady {
            videoreward.present(fromRootViewController: self)
        }
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd,
                            didRewardUserWith reward: GADAdReward) {
        coin += 1
        print("Reward received with currency: \(reward.type), amount \(reward.amount).")
    }
    
    func rewardBasedVideoAdDidReceive(_ rewardBasedVideoAd:GADRewardBasedVideoAd) {
        print("Reward based video ad is received.")
    }
    
    func rewardBasedVideoAdDidOpen(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Opened reward based video ad.")
    }
    
    func rewardBasedVideoAdDidStartPlaying(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad started playing.")
    }
    
    func rewardBasedVideoAdDidCompletePlaying(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad has completed.")
    }
    
    func rewardBasedVideoAdDidClose(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        GADRewardBasedVideoAd.sharedInstance().load(GADRequest(),
                                                    withAdUnitID: "ca-app-pub-5267056163100832/6814506085")
        print("Reward based video ad is closed.")
    }
    
    func rewardBasedVideoAdWillLeaveApplication(_ rewardBasedVideoAd: GADRewardBasedVideoAd) {
        print("Reward based video ad will leave application.")
    }
    
    func rewardBasedVideoAd(_ rewardBasedVideoAd: GADRewardBasedVideoAd,
                            didFailToLoadWithError error: Error) {
        print("Reward based video ad failed to load.")
    }
    
    
}//End Class
