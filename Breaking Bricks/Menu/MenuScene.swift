//
//  MenuScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import GameplayKit

class MenuScene: SKScene {
    
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var menuControls: MenuControls!
    
    var sceneNumber: Int!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        menuControls = MenuControls.init(inThisScene: self)
        
        sceneNumber = 0
        
        /// Load scene
        if let skView = gameViewController.view as! SKView? {
            self.size = skView.bounds.size
            self.scaleMode = .aspectFill
            
            // TODO: Comment or remove before release to App Store
            skView.ignoresSiblingOrder = true
            skView.showsFPS = true
            skView.showsNodeCount = true
        }
    }
    
    /// Included because is a requisite if a custom Init is used
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// Present Elements to the Scene
    override func didMove(to view: SKView) {
        
        
        if sceneNumber == 0{
            self.addChild(menuControls.bgclassic)
            self.addChild(menuControls.playclassic)
            self.addChild(menuControls.scoreclassic)
            self.addChild(menuControls.storeclassic)
        }
        if sceneNumber == 1{
            self.addChild(menuControls.retroLifeSkinBackground)
            self.addChild(menuControls.retroLifeSkinPlay)
            self.addChild(menuControls.retroLifeSkinScore)
            self.addChild(menuControls.retroLifeSkinStore)
        }
        if sceneNumber == 2{
            self.addChild(menuControls.rainbowBackground)
            self.addChild(menuControls.rainbowPlay)
            self.addChild(menuControls.rainbowScore)
            self.addChild(menuControls.rainbowStore)
        }
        if sceneNumber == 3{
            self.addChild(menuControls.lightBackground)
            self.addChild(menuControls.lightPlay)
            self.addChild(menuControls.lightScore)
            self.addChild(menuControls.lightStore)
        }
        if sceneNumber == 4{
            self.addChild(menuControls.soccerBackground)
            self.addChild(menuControls.soccerPlay)
            self.addChild(menuControls.soccerScore)
            self.addChild(menuControls.soccerStore)
        }
        if sceneNumber == 5{
            self.addChild(menuControls.spaceDustBackground)
            self.addChild(menuControls.spaceDustPlay)
            self.addChild(menuControls.spaceDustScore)
            self.addChild(menuControls.spaceDustStore)
        }
        if sceneNumber == 6{
            self.addChild(menuControls.acidRainBackground)
            self.addChild(menuControls.acidRainPlay)
            self.addChild(menuControls.acidRainScore)
            self.addChild(menuControls.acidRainStore)
        }
        if sceneNumber == 7{
            self.addChild(menuControls.endTimesBackground)
            self.addChild(menuControls.endTimesPlay)
            self.addChild(menuControls.endTimesScore)
            self.addChild(menuControls.endTimesStore)
        }
        if sceneNumber == 8{
            self.addChild(menuControls.pumpkinBackground)
            self.addChild(menuControls.pumpkinPlay)
            self.addChild(menuControls.pumpkinStore)
            self.addChild(menuControls.pumpkinScore)
        }
    }
    
    /// Before another Scence will be presented
    override func willMove(from view: SKView) {
        removeAllChildren()
    }
    
    /// Touch event
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let item = atPoint(location)
            
            /// Exit and return to GameScene
            if (item.name == "buttonSprite-Play") {
                gameViewController.gameScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.gameScene)
            }
            if (item.name == "buttonSprite-Store") {
                gameViewController.storeScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.storeScene)
                
            }
            if (item.name == "buttonSprite-Score") {
                gameViewController.scoreScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.scoreScene)
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
}
