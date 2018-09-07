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

class GameViewController: UIViewController {
    var value:Double = 1.0
    var timerIntro = Timer()
    let deviceType = UIDevice.current.deviceType
    var intro = LOTAnimationView()
    
     let skView = SKView()
    // MARK: App Properties
    
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
        self.view.isUserInteractionEnabled = false
        
        if deviceType == .iPad || deviceType == .iPad2 || deviceType == .iPadMini ||  UIDevice.current.userInterfaceIdiom == .phone{
            intro = LOTAnimationView(name: "Intro_Bricks")
            print("INTRO NORMAL")
        }else{
            intro = LOTAnimationView(name: "Intro Bricks_iPad")
            print("INTRO IPAD")
        }
        
        //SKView to present the scenes
        skView.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
        skView.center = self.view.center
        skView.contentMode = .scaleAspectFill
       // skView.allowsTransparency = true

        intro.play{ (finished) in
            
            self.timerIntro = Timer.scheduledTimer(timeInterval: 0.10, target: self, selector: #selector(self.introTimer), userInfo: nil, repeats: true)
        }
        
        /// MenuScene Setup
        menuScene = MenuScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        storeScene = StoreScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        scoreScene = ScoreScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        /// GameScene Setup
        gameScene = GameScene.init(sceneSize: view.bounds.size, referenceGVC: self)
        
        skView.presentScene(menuScene)
        view.addSubview(skView)
        
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
}//End Class
