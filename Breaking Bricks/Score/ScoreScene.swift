//
//  ScoreScene.swift
//  Breaking Bricks
//
//  Created by Luis Reyes on 8/21/18.
//  Copyright © 2018 Luis Reyes. All rights reserved.
//

import SpriteKit
import GameplayKit

class ScoreScene: SKScene {
    
    /// GameViewControl setup as reference to handle SceneStates
    var gameViewController: GameViewController!
    
    /// Game Controls
    var scoreControls: ScoreControls!
    
    var sceneNumber: Int!
    var firstload: Bool!
    
    private var lastUpdateTime : TimeInterval = 0
    
    /// Custom Initializer
    init(sceneSize: CGSize, referenceGVC: GameViewController) {
        
        /// Set reference of GameViewControl
        gameViewController = referenceGVC
        
        /// Create scene from code
        super.init(size: sceneSize)
        
        /// Menu Controls
        scoreControls = ScoreControls.init(inThisScene: self)
        
        sceneNumber = 0
        firstload = true
        
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
        
        if sceneNumber == 0 && firstload == true {
        /// Present Label and Button
            self.addChild(scoreControls.bgclassic)
            self.addChild(scoreControls.menuclassic)
            self.addChild(scoreControls.winclassic)
            self.addChild(scoreControls.winclassiclabel)
            self.addChild(scoreControls.loseclassic)
            self.addChild(scoreControls.loseclassiclabel)
            self.addChild(scoreControls.timeclassic)
            self.addChild(scoreControls.timeclassiclabel)
            
            self.addChild(scoreControls.scoreTimeLabel)
            self.addChild(scoreControls.scoreLoseLabel)
            self.addChild(scoreControls.scoreWinLabel)
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white

        }
        if sceneNumber == 1{
            
            /// Present Label and Button
            self.addChild(scoreControls.retroLifeSkinBackground)
            self.addChild(scoreControls.retroLifeSkinMenu)
            self.addChild(scoreControls.retroLifeSkinWin)
            self.addChild(scoreControls.retroLifeSkinWinLabel)
            self.addChild(scoreControls.retroLifeSkinLose)
            self.addChild(scoreControls.retroLifeSkinLoseLabel)
            self.addChild(scoreControls.retroLifeSkinTime)
            self.addChild(scoreControls.retroLifeSkinTimeLabel)

            
            self.addChild(scoreControls.scoreTimeLabel)
            self.addChild(scoreControls.scoreLoseLabel)
            self.addChild(scoreControls.scoreWinLabel)
            
            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white

        }
        if sceneNumber == 2{
            
            /// Present Label and Button
            self.addChild(scoreControls.rainbowBackground)
            self.addChild(scoreControls.rainbowMenu)
            self.addChild(scoreControls.rainbowWin)
            self.addChild(scoreControls.rainbowWinLabel)
            self.addChild(scoreControls.rainbowLose)
            self.addChild(scoreControls.rainbowLoseLabel)
            self.addChild(scoreControls.rainbowTime)
            self.addChild(scoreControls.rainbowTimeLabel)
            
            
            self.addChild(scoreControls.scoreTimeLabel)
            self.addChild(scoreControls.scoreLoseLabel)
            self.addChild(scoreControls.scoreWinLabel)

            scoreControls.scoreWinLabel.fontColor = .white
            scoreControls.scoreLoseLabel.fontColor = .white
            scoreControls.scoreTimeLabel.fontColor = .white
        }
        
        if sceneNumber == 3{
            
            /// Present Label and Button
            self.addChild(scoreControls.lightBackground)
            self.addChild(scoreControls.lightMenu)
            self.addChild(scoreControls.lightWin)
            self.addChild(scoreControls.lightWinLabel)
            self.addChild(scoreControls.lightLose)
            self.addChild(scoreControls.lightLoseLabel)
            self.addChild(scoreControls.lightTime)
            self.addChild(scoreControls.lightTimeLabel)
            
            
            self.addChild(scoreControls.scoreTimeLabel)
            self.addChild(scoreControls.scoreLoseLabel)
            self.addChild(scoreControls.scoreWinLabel)
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.54, green:0.54, blue:0.54, alpha:1.0)
            
        }
        if sceneNumber == 4{
            
            /// Present Label and Button
            self.addChild(scoreControls.soccerBackground)
            self.addChild(scoreControls.soccerMenu)
            self.addChild(scoreControls.soccerWin)
            self.addChild(scoreControls.soccerWinLabel)
            self.addChild(scoreControls.soccerLose)
            self.addChild(scoreControls.soccerLoseLabel)
            self.addChild(scoreControls.soccerTime)
            self.addChild(scoreControls.soccerTimeLabel)
            
            
            self.addChild(scoreControls.scoreTimeLabel)
            self.addChild(scoreControls.scoreLoseLabel)
            self.addChild(scoreControls.scoreWinLabel)
            
            scoreControls.scoreWinLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            scoreControls.scoreLoseLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            scoreControls.scoreTimeLabel.fontColor = UIColor(red:0.96, green:0.75, blue:0.00, alpha:1.0)
            
        }
        
        scoreControls.scoreWinLabel.text = ("\(win)")
        scoreControls.scoreLoseLabel.text = ("\(lose)")
        scoreControls.scoreTimeLabel.text = ("\(secondsPlus)")

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
            if (item.name == "buttonSprite-Menu") {
                gameViewController.scoreScene.sceneNumber = gameViewController.menuScene.sceneNumber
                gameViewController.skView.presentScene(gameViewController.menuScene)
                
            }
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
    }
    
}
